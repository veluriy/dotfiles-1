call jetpack#begin()

" gitdiff
Jetpack 'airblade/vim-gitgutter'

" color scheme
Jetpack 'morhetz/gruvbox'

" coc
Jetpack 'neoclide/coc.nvim', {'branch': 'release'}
Jetpack 'neoclide/coc.nvim', {'branch': 'master', 'source': '~/.config/nvim/rc/coc.rc.vim', 'do': 'yarn install --frozen-lockfile'}

" denite
Jetpack 'Shougo/denite.nvim', {'branch': 'release'}
Jetpack 'Shougo/denite.nvim', {'branch': 'master', 'source': '~/.config/nvim/rc/denite.rc.vim'}

" defx
Jetpack 'Shougo/defx.nvim', {'branch': 'release'}
Jetpack 'Shougo/defx.nvim', {'branch': 'master', 'source': '~/.config/nvim/rc/defx.rc.vim'}
Jetpack 'kristijanhusak/defx-git', {'source': '~/.config/nvim/rc/defx-git.rc.vim'}

" easy comment
Jetpack 'tpope/vim-commentary'

" surround
Jetpack 'tpope/vim-surround'

" HTMLtag
Jetpack 'rstacruz/sparkup'

" Airline customize
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'

" fzf
Jetpack 'junegunn/fzf.vim', {'build': './install --all', 'marged': 0}

" replacement preview
Jetpack 'markonm/traces.vim'

" indent
Jetpack 'Yggdroot/indentLine'

" rainbow
Jetpack 'junegunn/rainbow_parentheses.vim'

" tagbar
Jetpack 'majutsushi/tagbar'

call jetpack#end()
