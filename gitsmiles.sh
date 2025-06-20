if [[ $1 == "install" ]]; then
  cp ~/gitsmiles/gitsmiles.sh ~/gitsmiles/gitsmiles
  chmod 777 ~/gitsmiles/gitsmiles
  exit
fi
if [[ $1 == "uninstall" ]]; then
  rm -f ~/gitsmiles/gitsmiles
  exit
fi
if [[ $1 == "destroy" ]]; then
  rm -rf ~/gitsmiles/
fi
if [[ $1 == "help" ]]; then
  echo "\
Gitsmiles!

 ___
/. .\\
\---/

gitsmiles install - Turns CLI src code into a functional CLI
gitsmiles uninstall - Uninstalls CLI
gitsmiles update - updates Gitsmiles from src code
gitsmiles help - Shows help menu
gitsmiles destroy - Destroys gitsmiles from outer orbit

gitsmiles commit - Set commits and stage files
gitsmiles deploy - Push commits or Tags
gitsmiles view - Makes a localhost on port 8888
gitsmiles ship - Moves chosen files into app/ dir
gitsmiles tag - Makes a tag on the current commit
gitsmiles add - Adds a remote location to 'deploy' to
gitsmiles stat - Shows info about current Git stage
"
  exit
fi
if [[ $1 == "update" ]]; then
  git pull origin master
  gitsmiles install
  exit
fi
if [[ $1 == "" ]]; then
  gitsmiles help
  exit
fi
eval "python3 ~/gitsmiles/src/$1.py"
