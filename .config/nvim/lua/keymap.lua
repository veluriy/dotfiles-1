local leader_map = function()
    vim.g.mapleader = " "
    vim.api.nvim_set_keymap("n", " ", "", { noremap = true })
    vim.api.nvim_set_keymap("x", " ", "", { noremap = true })
end

leader_map()

---- helper

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local g = vim.g

---- move

map('i', 'jk', '<ESC>:w<CR>', { silent = true })
map('i', 'jj', '<ESC>', { silent = true })
map('n', '<C-Up>', '"zdd<Up>"zP')
map('n', '<C-Down>', '"zdd"zp')
map('v', '<C-Up>', '"zx<Up>"zP`[V`]')
map('v', '<C-Down>', '"zx"zp`[V`]')

---- window

map('n', 'te', ':tabedit<CR>', { silent = true })
map('n', 'tc', ':tabclose<CR>', { silent = true })
map('n', 'ss', ':split<CR>', { silent = true })
map('n', 'sv', ':vsplit<CR>', { silent = true })
map('n', 'sh', '<C-w>h', { silent = true })
map('n', 'sj', '<C-w>j', { silent = true })
map('n', 'sk', '<C-w>k', { silent = true })
map('n', 'sl', '<C-w>l', { silent = true })
map('n', '<Left>', '<C-w><', { silent = true })
map('n', '<Down>', '<C-w>-', { silent = true })
map('n', '<Up>', '<C-w>+', { silent = true })
map('n', '<Right>', '<C-w>>', { silent = true })

---- save end quit

map('n', '<Leader>z', 'ZZ<CR>')
map('n', '<C-s>', ':w<CR>')

---- undo

map('n', 'U', '<C-r>')

---- highlight

map('n', '<Leader><Esc>', ':<C-u>nohlsearch<CR>', { silent = true})

---- source %

map('n', '<Leader>%', ':source<Space>%<CR>')

---- Increment/decrement

map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

---- Select all

map('n', '<C-a>', 'gg<S-v>G')

---- terminal mode Esc

map('t', '<Esc>', '<C-\\><C-n>')
map('t', 'jk', '<C-\\><C-n>')
