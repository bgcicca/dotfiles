return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
  },
  {
    "neko-night/nvim",
    lazy = false,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
  {
    "nvim-neorg/neorg",
    lazy = false,
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {}, 
                ["core.dirman"] = { 
                    config = {
                        workspaces = {
                            notes = "~/neorg/notes", 
                        },
                        default_workspace = "notes",
                    },
                },
            },
        }
    end,
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "pmizio/typescript-tools.nvim",
    opts = {},
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
    config = function()
      require("typescript-tools").setup {}
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("nvim-ts-autotag").setup {
        filetypes = { "html", "xml", "javascript", "typescript", "tsx", "jsx", "vue" },
        enable_check_bracket_line = false,
        autotag = {
          enable = true,
        },
      }
    end,
  },
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
  },
  {
    "mfussenegger/nvim-jdtls",
    lazy = false,
  },
  {
    "echasnovski/mini.statusline",
    config = function()
      require("mini.statusline").setup { set_vim_settings = false }
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("ibl").setup {
        indent = { char = "│" },
        scope = { char = "│", highlight = "Comment" },
      }
    end,
  },
  require "configs.transparent",
  require "configs.plenary",
  require "configs.mini",
  require "configs.telescope",
  require "configs.mason",
  require "configs.bufferline",
  require "configs.neo-tree",
  require "configs.toggleterm",
  require "configs.neokinds-config",
  require "configs.treesitter",
  require "configs.conform",
  require "configs.lsp",
  --  require "fastvim.configs.ui",
  require "configs.blink-cmp",
  require "configs.colorful-menu",
}
