-- plugins.lua

---- helper

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

---- jetpack

vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 }-- bootstrap
  use { 'tjdevries/colorbuddy.nvim' }-- required neosolarized
  use { 'svrana/neosolarized.nvim' }-- color scheme
  use { 'nvim-lualine/lualine.nvim' }-- status line
  use { 'akinsho/nvim-bufferline.lua' }-- buffer line customize
  use { 'kyazdani42/nvim-web-devicons' }-- required buffer line
  use { 'phaazon/hop.nvim' }-- easymotion
  use { 'norcalli/nvim-colorizer.lua' }-- high performance color highlighter
  use { 'lewis6991/gitsigns.nvim' }-- git
  use { 'f-person/git-blame.nvim' }-- git blame
  use { 'TimUntersberger/neogit' }-- work in progress vim
  use { 'nvim-lua/plenary.nvim' }-- required neogit, telescope, trouble.nvim
  use { 'BurntSushi/ripgrep' }-- required telescope
  use { 'sharkdp/fd' }-- required telescope
  use { 'nvim-telescope/telescope.nvim' }-- high performance file searcher
  use { 'nvim-telescope/telescope-file-browser.nvim' }-- telescope extension
  use { 'windwp/nvim-ts-autotag' }-- powerfull typescript auto tag
  use { 'windwp/nvim-autopairs' }-- powerfull () {} []
  use { 'nvim-treesitter/nvim-treesitter' }-- parsing
  use { 'neovim/nvim-lspconfig' }-- neovim builtin LSP
  use { 'williamboman/mason.nvim' }-- neovim builtin LSP
  use { 'williamboman/mason-lspconfig.nvim' }-- neovim builtin LSP
  use { 'hrsh7th/nvim-cmp' }-- LSP complement
  use { 'hrsh7th/cmp-nvim-lsp' }-- LSP complement src
  use { 'hrsh7th/cmp-vsnip' }-- LSP snip
  use { 'hrsh7th/cmp-buffer' }-- LSP buffer cmp
  use { 'hrsh7th/vim-vsnip' }-- LSP snip
  use { 'kkharji/lspsaga.nvim' }-- LSP powerfull gui
  use { 'ray-x/lsp_signature.nvim' }-- LSP cmp powerfull gui
  use { 'onsails/lspkind.nvim' }-- LSP cmp icon
  use { 'j-hui/fidget.nvim' }-- LSP show running progress
  use { 'rust-lang/rust.vim' }-- rust fmt
  use { 'jose-elias-alvarez/typescript.nvim' }-- typescript lsp plugin
end)

---- lualine.nvim

local lualineStatus, lualine = pcall(require, "lualine")
if (not lualineStatus) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'solarized_dark',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_lualineStatus = true,
      path = 0
    } },
    lualine_x = {
      { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      'encoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_lualineStatus = true,
      path = 1
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' }
}

---- nvim-bufferline

local bufferlineStatus, bufferline = pcall(require, "bufferline")
if (not bufferlineStatus) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      underline = true,
      undercurl = true,
      italic = true
    },
    fill = {
      bg = '#073642'
    }
  },
})

map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>')
map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>')

---- hop.nvim

local hopStatus, hop = pcall(require, "hop")
if (not hopStatus) then return end

hop.setup()

map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map('n', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>")
map('n', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>")
map('v', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map('v', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map('v', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>")
map('v', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>")
map('n', '<Leader>e', '<cmd>HopWord<CR>')

---- nvim-colorizer.lua

local colorizerStatus, colorizer = pcall(require, "colorizer")
if (not colorizerStatus) then return end

colorizer.setup()

---- gitsigns

local gitsignsStatus, gitsigns = pcall(require, "gitsigns")
if (not gitsignsStatus) then return end

gitsigns.setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,
  numhl      = false,
  linehl     = false,
  word_diff  = false,
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol',
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,
  max_file_length = 40000,
  preview_config = {
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}

---- git-blame

vim.g.gitblame_enabled = 1
vim.g.gitblame_date_format = '%r'
vim.g.gitblame_message_templete = '<author>・<date>・<summary>'

---- neogit

local neogitStatus, neogit = pcall(require, "neogit")
if (not neogitStatus) then return end

neogit.setup {}
map('n', 'git', '<Cmd>Neogit<CR>')

---- telescope

local telescopeStatus, telescope = pcall(require, "telescope")
if (not telescopeStatus) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}
telescope.load_extension("file_browser")

------ keymaps

vim.keymap.set('n', ';f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)
vim.keymap.set('n', ';r', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)
vim.keymap.set('n', ';t', function()
  builtin.help_tags()
end)
vim.keymap.set('n', ';;', function()
  builtin.resume()
end)
vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end)
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)

---- autotag

local autotagStatus, autotag = pcall(require, "nvim-ts-autotag")
if (not autotagStatus) then return end

autotag.setup({})

---- autopair

local autopairStatus, autopairs = pcall(require, "nvim-autopairs")
if (not autopairStatus) then return end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

---- nvim-tree-sitter

local treesitterStatus, treesitter = pcall(require, "nvim-treesitter.configs")
if (not treesitterStatus) then return end

treesitter.setup({
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "c",
    "rust",
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

---- builtin LSP

local on_attach = function(client, bufnr)
  map('n', 'gn', '<cmd>lua vim.lsp.buf.references()<CR>')
end

local nvim_lspStatus, nvim_lsp = pcall(require, "lspconfig")
if (not nvim_lspStatus) then return end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'taplo',
    'hls',
    'zk',
    'sumneko_lua',
    'clangd',
    'rust_analyzer',
  }
})
require("mason-lspconfig").setup_handlers {
  function (server_name)
    local opt = {
      on_attach = on_attach,
      capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
    require("lspconfig")[server_name].setup(opt)
  end,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)

------ cmp

vim.opt.completeopt = "menu,menuone,noselect"


local cmpStatus, cmp = pcall(require, "cmp")
if (not cmpStatus) then return end
local lspkindStatus, lspkind = pcall(require, "lspkind")
if (not lspkindStatus) then return end

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-f>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "buffer" },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  }
})

------ saga

local lspsagaStatus, lspsaga = pcall(require, "lspsaga")
if (not lspsagaStatus) then return end

lspsaga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

lspsaga.setup {
  debug = false,
  use_saga_diagnostic_sign = true,
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  code_action_icon = " ",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  rename_output_qflist = {
    enable = false,
    auto_open_qflist = false,
  },
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
  diagnostic_message_format = "%m %c",
  highlight_prefix = false,
}

-------- key

map('n', 'gd', '<cmd>Lspsaga lsp_finder<CR>', {silent = true})
map('n', 'gr', '<cmd>Lspsaga rename<cr>', {silent = true})
map('n', 'gx', '<cmd>Lspsaga code_action<cr>', {silent = true})
map('x', 'gx', ':<c-u>Lspsaga range_code_action<cr>', {silent = true})
map('n', 'K',  '<cmd>Lspsaga hover_doc<cr>', {silent = true})
map('n', 'ge', '<cmd>Lspsaga show_line_diagnostics<cr>', {silent = true})
map('n', 'gj', '<cmd>Lspsaga diagnostic_jump_next<cr>', {silent = true})
map('n', 'gk', '<cmd>Lspsaga diagnostic_jump_prev<cr>', {silent = true})
map('n', '<C-u>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1, "<c-u>")<cr>')
map('n', '<C-d>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1, "<c-d>")<cr>')

------ fidget

local fisgetStatus, fidget = pcall(require, "fidget")
if (not fisgetStatus) then return end

fidget.setup()

---- rust.vim

vim.g.rustfmt_autosave = 1

---- typescript.nvim

local typescriptStatus, typescript = pcall(require, "typescript")
if (not typescriptStatus) then return end

typescript.setup({
  disable_commands = false,
  debug = false,
  gp_to_source_definition = {
    fallback = true,
  }
})
