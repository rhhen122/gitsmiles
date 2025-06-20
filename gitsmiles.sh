if [[ $1 == "install" ]]; then
  cp ~/gitsmiles/gitsmiles.sh ~/gitsmiles/gitsmiles
  chmod 777 ~/gitsmiles/gitsmiles
  exit
fi
if [[ $1 == "uninstall" ]]; then
  rm -f ~/gitsmiles/gitsmiles
fi
eval "python3 ~/gitsmiles/src/$1.py"
