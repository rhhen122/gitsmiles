import os


def sh(cmd):
    os.system(cmd)


cnt = input("What do you want to load [eg. master]: ")
sh(f"git checkout {cnt}")
