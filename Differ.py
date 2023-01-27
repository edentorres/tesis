import filecmp
import os

def diff(file1Name, file2Name):
    result = filecmp.cmp(file1Name, file2Name)
    if result == False:
        print(file1Name + " is different from " + file2Name)

entries = os.listdir('Tests/')
for entry in entries:
    diff("Tests/" + entry, "graph/" + entry)