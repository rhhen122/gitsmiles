import os
def sh(cmd):
    os.system(cmd)
sh('git tag')
cnt = input('Tag Version [eg v1.0] : ')
sh(f'git tag {cnt}')
