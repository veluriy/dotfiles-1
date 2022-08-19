vim.cmd('packadd vim-jetpack')
require('jetpack').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 }-- bootstrap
  use { 'morhetz/gruvbox' }-- color scheme
  use { 'tjdevries/colorbuddy.nvim' }-- required neosolarized
  use { 'svrana/neosolarized.nvim' }-- color scheme
  use { 'nvim-lualine/lualine.nvim' }-- status line
  use { 'junegunn/fzf', run = vim.fn['fzf#install'] }
  use { 'junegunn/fzf.vim' }
  use { 'rust-lang/rust.vim' }
  use { 'justmao945/vim-clang' }
  use { 'rhysd/vim-clang-format' }
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
  use { 'onsails/lspkind-nvim' }
  use { 'L3MON4D3/LuaSnip' }
  use { 'nvim-treesitter/nvim-treesitter' }
  use { 'windwp/nvim-ts-autotag' }
  use { 'windwp/nvim-autopairs' }
  use { 'nvim-lua/plenary.nvim' }-- required telescope
  use { 'BurntSushi/ripgrep' }-- required telescope
  use { 'sharkdp/fd' }-- required telescope
  use { 'nvim-telescope/telescope.nvim' }
  use { 'nvim-telescope/telescope-file-browser.nvim' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'akinsho/nvim-bufferline.lua' }--buffer line customize
  use { 'glepnir/lspsaga.nvim' }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'MunifTanjim/prettier.nvim' }
  use { 'lewis6991/gitsigns.nvim' }-- git
  use { 'f-person/git-blame.nvim' }-- git blame
  use { 'TimUntersberger/neogit' }-- work in progress vim
  use { 'norcalli/nvim-colorizer.lua' }-- high performance color highlighter
  use { 'phaazon/hop.nvim' }--easymotion
  use { 'mfussenegger/nvim-dap' }
  use { 'scalameta/nvim-metals', requires = { 'mfussenegger/nvim-dap' } }-- scala lsp
end)

-- git-blame
vim.g.gitblame_enabled = 1
vim.g.gitblame_date_format = '%r'
vim.g.gitblame_message_templete = '<author>・<date>・<summary>'

-- neogit
local neogit = require('neogit')
neogit.setup {}
vim.keymap.set('n', 'git', '<Cmd>Neogit<CR>')

-- colorrizer
require('colorizer').setup()
