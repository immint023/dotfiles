return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lsp")
    end,
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("cores.treesitter")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("cores.lspsaga")
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({})
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        filetypes = {
          yaml = true,
          markdown = true,
          handlebars = true,
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 24,
          keymap = {
            accept = "<C-j>",
            next = "<C-n>",
          },
        },
        copilot_node_command = vim.fn.expand("$HOME") .. "/.local/share/mise/installs/node/20/bin/node", -- Node.js version must be > 18.x
        server_opts_overrides = {},
      })
    end,
  },
  {
    "mg979/vim-visual-multi",
  },
  {
    "tpope/vim-rails",
  },
  {
    "uarun/vim-protobuf",
  },
  {
    "danymat/neogen",
    config = function()
      require("neogen").setup({})
    end,
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
  },
}
