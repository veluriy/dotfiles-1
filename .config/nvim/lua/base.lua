-- base.lua

---- helper

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

---- mouse

opt.mouse = ''

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

opt.scrolloff = 7

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
