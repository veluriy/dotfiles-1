" 基本設定

" 行番号
set number relativenumber

" 大文字小文字区別なし検索
set ignorecase
set smartcase

" インクリメンタルサーチ
set incsearch

" ハイライトサーチ
set hlsearch

" インタラクティブ置換
set inccommand=split

" ファイル先頭まで検索したら先頭から再検索
set wrapscan

" 対応する括弧にカーソルが！
set showmatch matchtime=1

" タブ関連
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set guioptions+=a

" タイトル
set title

" 折返し
set display=lastline

" 余裕を持ってスクロール
set scrolloff=3

" 補完メニューの高さ
set pumheight=10

" カーソル
set cursorline

" インデント
set autoindent
set smartindent
set cindent

" 入力中のコマンド
set showcmd

" regular expressions
set regexpengine=1

" 不可視文字表示
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" バックアップを生成しない(git使ってるのでいらない)
set nobackup

" コマンドラインモードで<tab>によるファイル名補完を有効
set wildmenu wildmode=list:longest,full

" yank で クリップボード
set clipboard+=unnamed

" redrawtime
set redrawtime=10000
set re=0

" 保存されていないファイルがあっても別ファイルが開ける
set hidden

" 文字コードとか
set fileformat=unix
set fileencodings=utf-8,sjis

" spell check
set spell

" NERDTree
let NERDTreeShowBookMarks = 1

" 高速化
let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:loaded_2html_plugin       = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:zipPlugin                 = 1
let g:skip_loading_mswin        = 1
set ttimeoutlen=50

" checkhealth
let g:loaded_node_provider = 0
let g:loaded_ruby_provider = 0
