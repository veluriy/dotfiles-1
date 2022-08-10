-- color.lua

vim.cmd 'colorscheme gruvbox'
vim.opt.background = 'dark'
vim.highlight.create('Normal', { ctermbg = 'NONE', guibg = 'NONE' }, false)
vim.highlight.create('NonText', { ctermbg = 'NONE', guibg = 'NONE' }, false)
vim.highlight.create('SpecialKey', { ctermbg = 'NONE', guibg = 'NONE' }, false)
vim.highlight.create('EndOfBuffer', { ctermbg = 'NONE', guibg = 'NONE' }, false)
vim.highlight.create('LineNr', { ctermbg = 'NONE', guibg = 'NONE' }, false)
vim.highlight.create('SignColumn', { ctermbg = 'NONE', guibg = 'NONE' }, false)
