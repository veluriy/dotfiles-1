-- base.lua

---- helper

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

---- line number

opt.number = true
opt.relativenumber = true

---- searching settings

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
opt.inccommand = 'split'
opt.wrapscan = true

---- highlight brackets

opt.showmatch = true
opt.matchtime = 1

---- tab

opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

---- title

opt.title = true

---- line

opt.display = 'lastline'

---- scroll

opt.scrolloff = 3

---- menu height

opt.pumheight = 10

---- cursor

opt.cursorline = true

---- indent

opt.autoindent = true
opt.smartindent = true
opt.cindent = true

---- show command

opt.showcmd = true

---- regular expressions

opt.regexpengine = 0

---- show invisible chars

opt.list = true
opt.listchars = { tab = '»-', trail = '-', eol = '↲', extends = '»', precedes = '«', nbsp = '%' }

---- no backup, on swap, no undo

opt.backup = false
opt.swapfile = true
opt.undofile = false

---- command mode tab

opt.wildmenu = true
opt.wildmode = { list = 'longest', 'full' }

---- hidden

opt.hidden = true

---- char code

opt.fileformat = 'unix'
opt.fileencodings = { 'utf-8', 'sjis' }

---- width

opt.ambiwidth = 'single'

---- blend

opt.winblend = 20
opt.pumblend = 20
opt.termguicolors = true

---- shell

opt.shell = 'fish'

---- disable default plugins

-- g.did_install_default_menus = 1
-- g.did_install_syntax_menu = 1
-- g.did_indent_on = 1
-- g.did_load_filetypes = 1
-- g.loaded_2html_plugin = 1
-- g.loaded_gzip = 1
-- g.loaded_man = 1
-- g.loaded_matchit = 1
-- g.loaded_matchparen = 1
-- g.loaded_netrwPlugin = 1
-- g.loaded_remote_plugins = 1
-- g.loaded_shada_plugin = 1
-- g.loaded_spellfile_plugin = 1
-- g.loaded_tarPlugin = 1
-- g.loaded_tutor_mode_plugin = 1
-- g.loaded_zipPlugin = 1
-- g.skip_loading_mswin = 1
