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

" 補完メニューの高さ
set pumheight=10

" カーソル
set cursorline cursorcolumn ruler

" インデント
set autoindent
set smartindent
set cindent

" 入力中のコマンド
set showcmd

" 不可視文字表示
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" バックアップを生成しない(git使ってるのでいらない)
set nobackup

" コマンドラインモードで<tab>によるファイル名補完を有効
set wildmenu wildmode=list:longest,full

" yank で クリップボード
set clipboard=unnamedplus
