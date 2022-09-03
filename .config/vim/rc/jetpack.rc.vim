let g:jetpack#optimization=2

call jetpack#begin()

" gitdiff
Jetpack 'airblade/vim-gitgutter'

" color scheme
Jetpack 'morhetz/gruvbox'

" color
Jetpack 'norcalli/nvim-colorizer.lua'
"
" fzf
Jetpack 'junegunn/fzf'
Jetpack 'junegunn/fzf.vim', { 'build': './install --all', 'marged': 0 }

" coc
Jetpack 'neoclide/coc.nvim', { 'branch': 'master', 'source': '~/.config/nvim/rc/coc.rc.vim', 'do': 'yarn install --frozen-lockfile' }
Jetpack 'antoinemadec/coc-fzf'

" easy comment
Jetpack 'tpope/vim-commentary'

" surround
Jetpack 'tpope/vim-surround'

" HTMLtag
" Jetpack 'rstacruz/sparkup'

" Airline customize
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'

" filetype
Jetpack 'nathom/filetype.nvim'

" rainbow
" Jetpack 'junegunn/rainbow_parentheses.vim'

" CheatSheet
Jetpack 'reireias/vim-cheatsheet'

" expand region
Jetpack 'terryma/vim-expand-region'

" vim doc ja
Jetpack 'vim-jp/vimdoc-ja'

" NERDTree
Jetpack 'preservim/nerdtree'

" NERDICONS
Jetpack 'ryanoasis/vim-devicons'

" vimwiki
Jetpack 'vimwiki/vimwiki'

" copilot
Jetpack 'github/copilot.vim'

" clang-format requirement
Jetpack 'kana/vim-operator-user'

" === lang ===

" fish highlight
Jetpack 'dag/vim-fish'

" mysql
Jetpack 'kezhenxu94/vim-mysql-plugin'

" sql
Jetpack 'lighttiger2505/sqls.vim'

" SATySFi
Jetpack 'qnighy/satysfi.vim'

" Rust
Jetpack 'rust-lang/rust.vim'

" js
Jetpack 'pangloss/vim-javascript'
Jetpack 'othree/yajs.vim'
Jetpack 'othree/es.next.syntax.vim'
Jetpack 'othree/javascript-libraries-syntax.vim'
Jetpack 'othree/html5.vim'
Jetpack 'maxmellon/vim-jsx-pretty'
Jetpack 'ternjs/tern_for_vim'
Jetpack 'yuezk/vim-js'
Jetpack 'elzr/vim-json'

" C/C++
Jetpack 'justmao945/vim-clang'
Jetpack 'rhysd/vim-clang-format'

" Coq
Jetpack 'LumaKernel/coqpit.vim'

call jetpack#end()
