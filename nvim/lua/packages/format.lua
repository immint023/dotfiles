return {
  {
    "windwp/nvim-autopairs",
    dependencies = "nvim-cmp",
    config = function()
      require("cores.auto-pair")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("cores.indent")
    end,
  },
  {
    "b3nj5m1n/kommentary",
    config = function()
      local config = require("kommentary.config")

      config.configure_language("default", {
        prefer_single_line_comments = true,
      })
      config.configure_language("php", {
        prefer_single_line_comments = true,
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup({
        signs = false,
        colors = {
          error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
          info = { "DiagnosticInfo", "#2563EB" },
          hint = { "DiagnosticHint", "#10B981" },
          default = { "Identifier", "#7C3AED" },
        },
      })
    end,
  },
  {
    "tpope/vim-surround",
  },
  {
    "kamykn/spelunker.vim",
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "anuvyklack/pretty-fold.nvim",
    config = function()
      require("pretty-fold").setup({
        matchup_patterns = {
          { "function%s*%(", "end" },
        },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          javascript = { { "prettierd", "prettier" } },
          typescript = { { "prettierd", "prettier" } },
          go = { { "gofumpt", "gofmt", "goimports_reviser", "golines" } },
          php = { { "phpcbf" } },
        },
      })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")

      lint.linters_by_ft = {
        typescript = { "cspell" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
