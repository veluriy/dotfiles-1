" dein
if &compatible
  set nocompatible
endif

let s:dein_dir = expand('$HOME/.config/nvim/dein')

set runtimepath^=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(s:dein_dir)
let s:toml_dir = expand('$HOME/.config/nvim/rc')
call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
call dein#end()
call dein#save_state()
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
