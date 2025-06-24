import os


def sh(cmd):
    os.system(cmd)


while True:
    cnt = input("1. Tags, 2. Commits: ")
    if cnt == "2":
        branch = input("Branch name: ")
        cnt = input("Enter Deploy location for git: ")
        sh(f"git push {cnt} {branch}")
        break
    else:
        cnt = input("Enter Deploy location for git: ")
        sh(f"git push {cnt} --tags")
        break
