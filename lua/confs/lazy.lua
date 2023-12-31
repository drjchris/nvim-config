local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  -- navigation between splits
  'numToStr/Navigator.nvim',

  -- telescope for better finding of stuff
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- auto pairs
  "windwp/nvim-autopairs",

  -- toggle comments
  'numToStr/Comment.nvim',

  -- Color theme
  "rebelot/kanagawa.nvim",

  -- better folds
  'anuvyklack/pretty-fold.nvim',

  -- for snippets
  'dcampos/nvim-snippy',

  -- for better syntax
  'nvim-treesitter/nvim-treesitter',

  -- add all the stuff for typst
  {
    'kaarmu/typst.vim',
    ft = 'typ',
    lazy=false
  },

  -- auto completion
  'neovim/nvim-lspconfig',
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  'dcampos/cmp-snippy',
  'hrsh7th/cmp-path',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-cmdline',

  -- auto format
  'jose-elias-alvarez/null-ls.nvim',

  -- MD table format
  {
  'dhruvasagar/vim-table-mode',
  ft = "quarto"
  },

  -- for embedded code recognition
  'jmbuhr/otter.nvim',

  -- for the TODO higlights
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  -- lua line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },


  -- which key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  -- for changes made to files
  {'lewis6991/gitsigns.nvim'},

  -- nvim wiki
  {'vimwiki/vimwiki',lazy=false},

  -- startup page
  {
    "startup-nvim/startup.nvim",
    dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  },

  -- for marking indent lines
  { 'echasnovski/mini.indentscope', version = '*' },

}

require("lazy").setup(plugins, opts)
