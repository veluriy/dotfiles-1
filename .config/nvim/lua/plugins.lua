vim.cmd('packadd vim-jetpack')
require('jetpack').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 }-- bootstrap
end)
