import os


def sh(cmd):
    os.system(cmd)


sh("git status")
sh("git branch")
