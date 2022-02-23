" normal map

let mapleader = "\<space>"
inoremap <expr><CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap jk <ESC><Right>:<C-u>w<CR>
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
" スペース2回でハイライト、#で置換
nnoremap <silent> <Space><Space> :let @/ = '\<' . expand('<cword>') . '\>'<CR>:set hlsearch<CR>
nmap # <Space><Space>:%s/<C-r>///g<Left><Left>
nnoremap <silent> <Esc><Esc><Esc> :<C-u>nohlsearch<CR>
" 行移動
nnoremap <C-Up> "zdd<Up>"zP
nnoremap <C-Down> "zdd"zp
vnoremap <C-Up> "zx<Up>"zP`[V`]
vnoremap <C-Down> "zx"zp`[V`]
" タイポ修正
inoremap <C-t> <Esc><Left>"zx"zpa

" defx
nnoremap <silent><Leader>f :<C-u>Defx<CR>
