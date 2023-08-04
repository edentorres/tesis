import os
import re

def replace_label(input):
    pattern = r'label="(.*?)"'
    D = "D" if "Donate" in input else "!D"
    DA = "DA" if "Donate_A" in input else "!DA"
    DB = "DB" if "Donate_B" in input else "!DB"
    F = "F" if "GetFunds" in input else "!F"
    C = "C" if "Claim" in input else "!C"
    CA = "CA" if "Claim_A" in input else "!CA"
    CB = "CB" if "Claim_B" in input else "!CB"
    
    CI = "Ci" if "Claim_Init" in input else "!Ci"
    CE = "Ce" if "Claim_End" in input else "!Ce"
    
    T = "τ" if "\"t()" in input or ";t()" in input else "!τ"
    BGTZ = "B > 0" if "dummy_balanceGTZero()" in input else ""
    BEZ = "B = 0" if "dummy_balanceIsZero()" in input else ""
    BAG =  "B[A]>0\n& B[B]=0" if "dummy_balanceAGTZeroAndNotB()" in input else ""
    BABG = "B[A]>0\n& B[B]>0" if "dummy_balanceAGTZeroAndBGTZero()" in input else ""
    BBG =  "B[A]=0\n& B[B]>0" if "dummy_balanceBGTZeroAndNotA()" in input else ""
    BAZ0 = "B[A]=0\n& B[B]=0" if "dummy_balanceAAndBZero()" in input else ""
    
    #classic
    #replaced_string = re.sub(pattern, r'label="{} & {}\\n& {}"'.format(D, F, C), input)
    
    #classic + tau
    #replaced_string = re.sub(pattern, r'label="{} & {}\\n& {} & {}"'.format(D, F, C, T), input)
    
    #classic + tau + balace
    #replaced_string = re.sub(pattern, r'label="{} & {} & {}\\n& {} & {}{}"'.format(D, F, C, T, BGTZ, BEZ), input)
    
    #Method refinement
    #Donate
    # replaced_string = re.sub(pattern, r'label="{} & {}\\n & {} & {}\\n& {}"'.format(DA, DB, F, C, T, BGTZ, BEZ), input)
    #claim
    #replaced_string = re.sub(pattern, r'label="{} & {} &\\n{} & {}\\n& {}"'.format(D, F, CA, CB, T), input)
    
    #claim + balance
    # replaced_string = re.sub(pattern, r'label="{} & {} &\\n{} & {} &\\n{} & {}{}{}{}{}{}"'.format(D, F, CA, CB, T, BGTZ, BEZ, BAG, BABG, BBG, BAZ0), input)
    
    #Reentrancy
    replaced_string = re.sub(pattern, r'label="{} & {} &\\n{} & {} &\\n {} &\\n{}{}"'.format(D, F, CI, CE, T, BGTZ, BEZ), input)
    
    return replaced_string

def compactar_trx_mismo_estado(ret_transiciones):
    def f_name(s):
        ret = s.strip().replace("label=", "").replace("]", "")
        ret = ret.replace("Donate();", "donate")
        ret = ret.replace("\"t();", "τ")
        ret = ret.replace(";t();", "τ")
        ret = ret.replace("Claim();", "claim")
        ret = ret.replace("GetFunds();", "getFunds")
        ret = ret.replace("dummy_balanceGTZero();", "")
        ret = ret.replace("dummy_balanceIsZero();", "")
        ret = ret.replace("dummy_balanceAGTZeroAndNotB();", "")
        ret = ret.replace("dummy_balanceAGTZeroAndBGTZero();", "")
        ret = ret.replace("dummy_balanceBGTZeroAndNotA();", "")
        ret = ret.replace("dummy_balanceAAndBZero();", "")
        ret = ret.replace("();", "")
        return ret

    def new_f_name(names):
        ret = "[label=\""
        names = list(filter(lambda x: x != "\"\"", names))
        for i in range(len(names)):
            if i != 0:
                if names != "":
                    ret += "\\n"
            ret += names[i].replace("\"","")
        ret += "\"]"
        return ret

    new_txs = {}
    for txs in ret_transiciones:
        txs = txs.strip().replace(" ", "")
        tx = txs.split("[")  # S09->S09 [label=t]
        if tx[0] in new_txs:
            new_txs[tx[0]].append(f_name(tx[1]))
        else:
            new_txs[tx[0]] = [f_name(tx[1])]

    ret_transiciones.clear()
    for tx in new_txs.keys():
        if new_txs[tx] != "\"\"":
            ret_transiciones.append("{} {}".format(tx, new_f_name(new_txs[tx])))

if __name__ == "__main__":
    file_path = os.path.join("graph", "CrowdfundingTimeReentrancy_Mode.epa")
    file = open(file_path, "r", encoding="utf-8")
    lines = file.readlines()
    output = []
    line_tmp = ""
    primeras_lineas = []
    for line in lines:
        line = line.strip()
        if "Prueba" in line or "{" in line or "}" in line:
            continue
        line_tmp += line
        if line[-1] != "]":
            continue
        else:
            if "->" in line_tmp:
                output.append(line_tmp)
            else:
                if not line_tmp in primeras_lineas:
                    primeras_lineas.append(line_tmp)
            line_tmp = ""
    
    # cambio el formato de los estados
    for linea in range(len(primeras_lineas)):
        estilo_circulo = ", shape=circle]"
        primeras_lineas[linea] = primeras_lineas[linea][0:-1] + estilo_circulo
        primeras_lineas[linea] = replace_label(primeras_lineas[linea])
        primeras_lineas[linea] = primeras_lineas[linea].replace("t();", "τ")
        # primeras_lineas[i] = primeras_lineas[i].replace("Claim();", "C")
        # primeras_lineas[i] = primeras_lineas[i].replace("GetFunds();", "F")
        
        
    
    compactar_trx_mismo_estado(output)
    
    output.extend(primeras_lineas)
    output.insert(0, "digraph {")
    output.append("}")
    
    ELIMINAR_NO_CONFIRMADOS = False
    
    estados_iniciales = []
    for linea in output:
        if "?" in linea:
            if ELIMINAR_NO_CONFIRMADOS:
                continue
            linea = linea.replace("]", ", color=red]")
        if "init" in linea:
            if "->" in linea:
                estados_iniciales.append(linea.split(" ")[0].split("->")[1])
            linea = "// "+linea
            # continue
        for s in estados_iniciales:
            if not "->"in linea and s in linea.split(" ")[0]:
                linea = linea.replace("circle","doublecircle")
                break
        if "!τ" in linea and "shape" in linea:
            linea = linea.replace("circle","square")
        print(linea)