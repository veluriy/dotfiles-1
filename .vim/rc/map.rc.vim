" normal map

let mapleader = "\<space>"
inoremap <expr><CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap jk <ESC>:<C-u>w<CR>
nnoremap <Leader>z ZZ<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap U <c-r>
nnoremap J 10j
nnoremap K 10k
nnoremap H 0
nnoremap L $
nnoremap p ]p
nnoremap P ]P
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>
nnoremap <silent> <Space><Space> :let @/ = '\<' . expand('<cword>') . '\>'<CR>:set hlsearch<CR>
