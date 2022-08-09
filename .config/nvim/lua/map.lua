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

---- save end quit

map('n', '<Leader>z', 'ZZ<CR>')
map('n', '<Leader>w', ':w<CR>')

---- undo

map('n', 'U', '<C-r>')

---- highlight

map('n', '<Esc><Esc><Esc>', ':<C-u>nohlsearch<CR>', { silent = true})
