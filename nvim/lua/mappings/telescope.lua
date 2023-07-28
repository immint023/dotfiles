local map = vim.keymap.set
local telescope_builtin = require("telescope.builtin")

map("n", "<Leader>fb", ":Telescope buffers <CR>")

map("n", "<C-p>", function()
  telescope_builtin.find_files({
    find_command = {
      "rg",
      "--ignore",
      "--hidden",
      "-uu",
      "--glob=!.git/",
      "--glob=!.build/",
      "--glob=!.idea/",
      "--files",
    },
    prompt_prefix = "🔍 ",
  })
end, { silent = true })

map("n", "<Leader>fg", function()
  telescope_builtin.live_grep({
    find_command = { "rg", "--ignore", "--hidden", "--files" },
    prompt_prefix = "🔍 ",
  })
end, { silent = true })

map("n", "<Leader>ma", ":Telescope marks <CR>", { silent = true })
map("n", "gr", ":Telescope lsp_references <CR>", { silent = true })
map("n", "<Leader>sp", function()
  return require("telescope.builtin").lsp_document_symbols({
    symbol_width = 50,
    symbols = {
      "Method",
    },
  })
end, { silent = true })
