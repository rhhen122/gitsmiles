if [[ $1 == "install" ]]; then
  cp ~/gitsmiles/gitsmiles.sh ~/gitsmiles/gitsmiles
  chmod 777 ~/gitsmiles/gitsmiles
  exit
fi
if [[ $1 == "uninstall" ]]; then
  rm -f ~/gitsmiles/gitsmiles
  exit
fi
if [[ $1 == "help" ]]; then
  echo "\
Gitsmiles!

gitsmiles help
gitsmiles git
gitsmiles deploy
gtismiles view
"
  exit
fi
eval "python3 ~/gitsmiles/src/$1.py"
