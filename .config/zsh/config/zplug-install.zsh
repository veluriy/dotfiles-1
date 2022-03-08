#            _                   _           _        _ _ 
#  _____ __ | |_   _  __ _      (_)_ __  ___| |_ __ _| | |
# |_  / '_ \| | | | |/ _` |_____| | '_ \/ __| __/ _` | | |
#  / /| |_) | | |_| | (_| |_____| | | | \__ \ || (_| | | |
# /___| .__/|_|\__,_|\__, |     |_|_| |_|___/\__\__,_|_|_|
#     |_|            |___/

if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
