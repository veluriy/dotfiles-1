#!/bin/bash

set -ue

install_git_completion_prompt() {
  mkdir -p ~/.zsh/completion
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.zsh/completion/_git
  curl https://raw/githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.zsh/completion/git-prompt.sh

  chmod a+x ~/.zsh/completion/_git
  chmod a+x ~/.zsh/completion/git-prompt.zsh

  rm -f ~/.zcompdump
}

install_git_completion_prompt
