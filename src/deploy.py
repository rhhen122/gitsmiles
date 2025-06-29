import os


def sh(cmd):
    os.system(cmd)


while True:
    cnt = input("1. Tags, 2. Commits, 3. Both: ")
    if cnt == "2":
        branch = input("Branch name: ")
        cnt = input("Enter Deploy location for git: ")
        sh(f"git push {cnt} {branch}")
        break
    elif cnt == "1":
        cnt = input("Enter Deploy location for git: ")
        sh(f"git push {cnt} --tags")
        break
    elif cnt == "3":
        branch = input("Branch name: ")
        cnt = input("Enter Deploy location for git: ")
        sh(f"git push {cnt} {branch}")
        sh(f"git push {cnt} --tags")
