import os
loc = 0
nn = 0
def sh(cmd):
    os.system(cmd)
cnt = input('Location to add [url] : ')
cnt = loc
cnt = input('NickName Location [eg origin] : ')
cnt = nn
sh(f'git remote add {nn} {loc}')
