-- map.lua

---- helper

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local g = vim.g
g.mapleader = ' '

---- move

map('i', 'jk', '<ESC>:w<CR>', { silent = true })
map('n', '<C-Up>', '"zdd<Up>"zP')
map('n', '<C-Down>', '"zdd"zp')
map('v', '<C-Up>', '"zx<Up>"zP`[V`]')
map('v', '<C-Down>', '"zx"zp`[V`]')

---- window

map('n', 'te', ':tabedit<CR>', { silent = true })
map('n', 'tc', ':tabclose<CR>', { silent = true })
map('n', 'ss', ':split<CR>', { silent = true })
map('n', 'sv', ':vsplit<CR>', { silent = true })
map('n', '<C-h>', '<C-w>h', { silent = true })
map('n', '<C-j>', '<C-w>j', { silent = true })
map('n', '<C-k>', '<C-w>k', { silent = true })
map('n', '<C-l>', '<C-w>l', { silent = true })
map('n', '<Left>', '<C-w><', { silent = true })
map('n', '<Down>', '<C-w>-', { silent = true })
map('n', '<Up>', '<C-w>+', { silent = true })
map('n', '<Right>', '<C-w>>', { silent = true })

---- save end quit

map('n', '<Leader>z', 'ZZ<CR>')
map('n', '<Leader>w', ':w<CR>')

---- undo

map('n', 'U', '<C-r>')

---- highlight

map('n', '<Esc><Esc><Esc>', ':<C-u>nohlsearch<CR>', { silent = true})

---- source %

map('n', '<Leader>%', ':source<Space>%<CR>')

---- Increment/decrement

map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

---- Select all

map('n', '<C-a>', 'gg<S-v>G')
