vim.cmd([[
    syntax off
    if has('termguicolors')
      set termguicolors
    endif
]])

vim.cmd("let g:gruvbox_material_background = 'medium'")
vim.cmd.colorscheme("slate")

vim.api.nvim_set_hl(0, "SignColumn", { ctermbg = 0, bg = transparent, fg = transparent })

-- config for vim-dadbod-ui
vim.api.nvim_set_hl(0, "NotificationInfo", { ctermbg = 0, bg = transparent, fg = transparent })
vim.api.nvim_set_hl(0, "NotificationWarning", { ctermbg = 0, bg = transparent, fg = transparent })
vim.api.nvim_set_hl(0, "NotificationError", { ctermbg = 0, bg = transparent, fg = transparent })

vim.api.nvim_set_hl(0, "cursorlinenr", { ctermbg = bold, bg = transparent, fg = "#03fc0f" })
