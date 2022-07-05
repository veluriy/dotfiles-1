" cheatsheet path
let g:cheatsheet#cheat_file = '/home/wurzeit/dotfiles/.config/vim/rc/cheetsheet.md'

" coc css
autocmd FileType sass setl iskeyword+=@-@
autocmd FileType scss setl iskeyword+=@-@

" coc vim
let g:markdown_fenced_languages = ['vim', 'help']

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#default#layout = [[ 'a', 'b', 'c' ],[ 'x', 'y', 'z', 'error', 'warning' ]]
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {'0': '0 ','1': '1 ','2': '2 ','3': '3 ','4': '4 ','5': '5 ','6': '6 ','7': '7 ','8': '8 ','9': '9 '}

" Rust.vim auto fmt
let g:rustfmt_autosave = 1

" clang format
autocmd Filetype c ClangFormatAutoEnable
