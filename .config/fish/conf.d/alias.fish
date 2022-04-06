#        _ _
#   __ _| (_) __ _ ___
#  / _` | | |/ _` / __|
# | (_| | | | (_| \__ \
#  \__,_|_|_|\__,_|___/

# ls
alias l "exa -la --grid"
alias ll "exa -la --tree"
alias la "exa -abghHliS"
alias lla "exa -abghHliS --tree"
alias lc "clear && l"
alias llc "clear && ll"
alias lac "clear && la"
alias llac "clear && lla"

# cd
alias d "cd ~/dotfiles"
alias p "cd ~/projects"
alias til "cd ~/projects/til"
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."

# rm
alias rm "rm -iv"

# cp
alias cp "cp -iv"

# apt
alias agu "sudo apt update"
alias agi "sudo apt install"
alias agr "sudo apt remove"

# vim
alias vim "nvim"

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
