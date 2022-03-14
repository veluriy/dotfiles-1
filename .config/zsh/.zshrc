#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
	for i in $ZSHHOME/config/*; do
		[[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
	done
fi
