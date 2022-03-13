#            _                   _           _        _ _ 
#  _____ __ | |_   _  __ _      (_)_ __  ___| |_ __ _| | |
# |_  / '_ \| | | | |/ _` |_____| | '_ \/ __| __/ _` | | |
#  / /| |_) | | |_| | (_| |_____| | | | \__ \ || (_| | | |
# /___| .__/|_|\__,_|\__, |     |_|_| |_|___/\__\__,_|_|_|
#     |_|            |___/

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "mollifier/cd-gitroot"
zplug "mollifier/anyframe"
zplug "b4b4r07/enhancd"
zplug "b4b4r07/emoji-cli"
zplug "sindresorhus/pure"
zplug "hchbaw/auto-fu.zsh"
zplug "oknowton/zsh-dwim"
zplug "ascii-soup/zsh-url-highlighter"
zplug "supercrabtree/k"
zplug "sharkdp/bat"
zplug "mafredri/zsh-async"
zplug "chrissicool/zsh-256color"

if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
