import os


def sh(cmd):
    os.system(cmd)


print("This is a demo plugin")

# Use sh function to call a git command [eg. sh('git commit -m "commit"')]
