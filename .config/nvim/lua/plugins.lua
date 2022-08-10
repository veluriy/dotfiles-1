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
end)
