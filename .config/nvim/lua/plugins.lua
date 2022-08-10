vim.cmd('packadd vim-jetpack')
require('jetpack').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 }-- bootstrap
  use { 'morhetz/gruvbox' }-- color scheme
  use { 'junegunn/fzf', run = vim.fn['fzf#install'] }
  use { 'junegunn/fzf.vim' }
  use { 'rust-lang/rust.vim' }
  use { 'justmao945/vim-clang' }
  use { 'rhysd/vim-clang-format' }
  use { 'airblade/vim-gitgutter' }
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'ibhagwan/fzf-lua' }
end)

-- 'airblade/gitgutter'
vim.g.gitgutter_sign_added = '+'
vim.g.gitgutter_sign_modified = '^'
vim.g.gitgutter_sign_removed = '-'
vim.highlight.create('GitGutterAdd', { guifg = '#009900', ctermfg = 2 }, false)
vim.highlight.create('GitGutterChange', { guifg = '#bbbb00', ctermfg = 3 }, false)
vim.highlight.create('GitGutterDelete', { guifg = '#ff2222', ctermfg = 1 }, false)
vim.highlight.create('GitGutterAddLine', { ctermbg = 2 }, false)
vim.highlight.create('GitGutterChangeLine', { ctermbg = 3 }, false)
vim.highlight.create('GitGutterDeleteLine', { ctermbg = 1 }, false)
