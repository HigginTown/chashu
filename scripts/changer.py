import os 
import sys
import subprocess

new_dest = ' ' + sys.argv[1]
cql_script = sys.argv[2]

try:
    assert os.path.exists(sys.argv[1]) == True
    assert new_dest.split(".")[-1].lower()=='pgn'
    assert cql_script.split(".")[-1]=='cql'
except:
    print("Not a valid pgn or cql script")
    print("first argument is a pgn, second is a sql script")

def changefile(cql):
    with open(cql, 'r') as f:
        text_lines = f.readlines()
        for line in text_lines:
            if line.startswith('cql'):
                pieces = line.split('input')
                piece_to_replace = pieces[-1][:-2]
                text = "".join(text_lines)
                text = text.replace(piece_to_replace, new_dest)
                print(text)

changefile(cql_script)