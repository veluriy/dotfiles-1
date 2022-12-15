#        _ _
#   __ _| (_) __ _ ___
#  / _` | | |/ _` / __|
# | (_| | | | (_| \__ \
#  \__,_|_|_|\__,_|___/

# ls
alias l "exa -la --icons"
alias ll "exa -la --icons --tree"
alias la "exa -abghHliS --icons"
alias lla "exa -abghHliS --icons --tree"
alias lc "clear && l"
alias llc "clear && ll"
alias lac "clear && la"
alias llac "clear && lla"

# cd
alias d "cd ~/dotfiles"
alias p "cd ~/projects"
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."

# rm
alias rm "rm -iv"

# cp
alias cp "cp -iv"

# vim
alias vim "nvim"
alias v "nvim"

# tar
alias tarx "tar -zxvf"

# figlet
alias aa "figlet"

# clear
alias c "clear"

# stack
alias ghci "stack ghci"
alias ghc "stack ghc --"
alias runghc "stack runghc --"

# git
alias g "git"

alias ga "git add"
alias gaa "git add --all"

alias gs "git status"

alias gc "git commit -vm"
alias gac "git add --all && git commit -vm"

alias gb "git branch"
alias gba "git branch -a"
alias gbr "git branch -r"
alias gco "git checkout"
alias gcob "git checkout -b"

alias gf "git fetch"
alias gp "git push"
alias gl "git pull"

alias gd "git diff"

# shutdown
alias shutnow "shutdown -h now"

# clipboard copy
alias clip "xsel --clipboard --input"

# vi mode bind
function fish_user_key_bindings
  bind -M insert \cc kill-whole-line repaint
  bind -M insert -m default jk 'commandline -f repaint'
  bind -M insert \cf accept-autosuggestion
end

# etc bind
bind \cd 'exit'
