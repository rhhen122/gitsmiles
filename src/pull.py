import os
def sh(cmd):
    os.system(cmd)
brn = input('Branch [eg. main, master]: ')
cnt = input('Location [eg. origin, github]: ')
sh(f'git pull {cnt} {brn}')
