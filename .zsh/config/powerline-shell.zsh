function powerline_precmd() {
	PS1="$(powerline-shell --shell zsh $?)\n"
}

function install_powerline_precmd() {
	for s in "${precmd_function[@]}"; do
		if [ "$s" = "powerline_precmd" ]; then
			return
		fi
	done
	precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
	install_powerline_precmd
fi
