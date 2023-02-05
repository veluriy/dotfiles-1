# homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /home/linuxbrew/.linuxbrew/bin/brew

# cargo
set -gx CARGO_HOME $HOME/.cargo
fish_add_path $CARGO_HOME/bin

# opam
fish_add_path $HOME/.opam/default/bin
