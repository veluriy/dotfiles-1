" Leader key
let mapleader = "\<space>"

" 移動系
inoremap <silent>jk <ESC>:w<CR>
nnoremap <Leader>z ZZ<CR>
nnoremap <Leader>w :w<CR>
nnoremap <silent>j gj
nnoremap <silent>k gk
vnoremap <silent>j gj
vnoremap <silent>k gk
nnoremap J 10j
nnoremap K 10k
nnoremap H 0
nnoremap L $
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 戻る
nnoremap U <c-r>

" 矢印キーを無効化
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>

" スペース2回でハイライト、#で置換、Esc3回でハイライトオフ
nnoremap <silent> <Space><Space> :let @/ = '\<' . expand('<cword>') . '\>'<CR>:set hlsearch<CR>
nmap # <Space><Space>:%s/<C-r>///g<Left><Left>
nnoremap <silent> <Esc><Esc><Esc> :<C-u>nohlsearch<CR>

" 行移動
nnoremap <C-Up> "zdd<Up>"zP
nnoremap <C-Down> "zdd"zp
vnoremap <C-Up> "zx<Up>"zP`[V`]
vnoremap <C-Down> "zx"zp`[V`]

" split関連
nnoremap <silent> <Leader><S-j> :split<CR>
nnoremap <silent> <Leader><S-l> :vsplit<CR>

" 行結合
nnoremap <Bar> $:let pos = getpos(".")<CR>:join<CR>:call setpos('.', pos)<CR>

" buffer関連
nnoremap <Leader>e :e<Space>
nnoremap <Leader>b :b<Space>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <silent> <Leader>ls :ls<CR>
nmap <silent> <C-p> <Plug>AirlineSelectPrevTab
nmap <silent> <C-n> <Plug>AirlineSelectNextTab

" 範囲拡大
vmap v <Plug>(expand_region_expand)

nmap <silent> <Leader>? :Cheat<CR>

" indent
function! AddIndentWhenEnter()
  if getline(".")[col(".")-1] == "}" && getline(".")[col(".")-2] == "{"
    return "\n\t\n\<UP>\<END>"
  elseif getline(".")[col(".")-1] == ")" && getline(".")[col(".")-2] == "("
    return "\n\t\n\<UP>\<END>"
  else
    return "\n"
  endif
endfunction
inoremap <silent> <expr> <CR> AddIndentWhenEnter()
