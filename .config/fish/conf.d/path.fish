#              _   _
#  _ __   __ _| |_| |__
# | '_ \ / _` | __| '_ \
# | |_) | (_| | |_| | | |
# | .__/ \__,_|\__|_| |_|
# |_|

# homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /home/linuxbrew/.linuxbrew/bin/brew

# cargo
set -gx CARGO_HOME $HOME/.cargo
fish_add_path $CARGO_HOME/bin
