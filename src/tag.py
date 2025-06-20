import os
def sh(cmd):
    os.system(cmd)
cnt = input('Tag Version [eg v1.0] : ')
sh(f'git tag {cnt}')
