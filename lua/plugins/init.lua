return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "go", "rust", "python",
       "html", "css", "c", "cpp"
  		},
  	},
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
       require('gitsigns').setup {
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
      },
      current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
    }
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
          "nvim-treesitter/nvim-treesitter",
          opopts = {
                  ensure_installed = {
                          "vim", "lua", "vimdoc",
                          "html", "css", "go", "python", "c", "rust"
                  },
          },
  },
  {
          'nvim-telescope/telescope.nvim',
          -- tag = '0.1.8',
          branch = '0.1.x',
          dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
          "vhyrro/luarocks.nvim",
          priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
          config = true,
  },
  {
          "github/copilot.vim",
          lazy = false,
          config = function() -- Mapping tab is already used in NvChad
                  vim.g.copilot_no_tab_map = true; -- Disable tab mapping
                  vim.g.copilot_assume_mapped = true; -- Assume that the mapping is already done
          end
  },
  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    config = function()
      require("project_nvim").setup()
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      view = {
        width = {
          min = 10,
          max = 50,
        },
        side = 'left',
      },
        update_focused_file = {
        enable = true,
        update_root = true
      },
    },
  },
}
