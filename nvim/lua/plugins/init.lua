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
    "NvChad/WallSync",
    lazy = false,
    main = "wallsync",
    opts = {
      auto_start = true,
      auto_install_templates = true,
      notify = true,
      debounce_ms = 500,
      -- Optional: force "dark" or "light" if your generator does not update ~/.cache/wal/colors.
      mode = nil,
      -- Optional: path to the base46 plugin if it is NOT a sibling of WallSync.
      -- base46_path = vim.fn.expand "~/.local/share/nvim/lazy/base46",
      -- Optional: where Matugen templates are copied (used by matugen/config.toml).
      -- matugen_templates_dir = vim.fn.expand "~/.local/share/wallsync",
   },
  }
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
