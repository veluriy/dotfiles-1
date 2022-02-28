" dein
if &compatible
  set nocompatible
endif

" vim nvim 分岐
if has('nvim')
  let s:dein_dir = expand('$HOME/.config/nvim/dein')
else
  let s:dein_dir = expand('$HOME/.vim/dein')
endif

let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
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
