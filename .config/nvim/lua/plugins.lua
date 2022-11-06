-- plugins.lua

vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 }-- bootstrap
  use { 'tjdevries/colorbuddy.nvim' }-- required neosolarized
  use { 'svrana/neosolarized.nvim' }-- color scheme
  use { 'nvim-lualine/lualine.nvim' }-- status line
end)
