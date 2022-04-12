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
nnoremap <Leader>m "zdd<Up>"zP
nnoremap <Leader>n "zdd"zp
vnoremap <Leader>m "zx<Up>"zP`[V`]
vnoremap <Leader>n "zx"zp`[V`]
" タイポ修正
inoremap <C-t> <Esc><Left>"zx"zpa

" buffer関連
nnoremap <Leader>e :e<Space>
nnoremap <Leader>b :b<Space>
nnoremap <silent> <Leader>bn :b n<CR>
nnoremap <silent> <Leader>bp :b p<CR>
nnoremap <silent> <Leader>l :ls<CR>

" tagbar
nmap <Leader>t :TagbarToggle<CR>

" fzf-preview
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]
nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [fzf-p]ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> [fzf-p]/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.LocationList<CR>

" coc react refactor
xmap <Leader>a <Plug>(coc-codeaction-selected)
nmap <Leader>a <Plug>(coc-codeaction-selected)

" coc rls
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
