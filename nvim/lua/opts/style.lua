----- TOKYNIGHT CONFIG ------------
require('tokyonight').setup({
    style = 'moon',
    terminal_colors = true,
    transparent = false,
    -- styles = {sidebars = 'transparent'}
})

vim.cmd [[
    syntax enable
    if has('termguicolors')
      set termguicolors
    endif
]]

-- SCHEME
vim.cmd [[
    let g:gruvbox_material_enable_bold=0
    let g:gruvbox_material_enable_italic=1
    let g:gruvbox_material_palette = 'original'
    let g:gruvbox_material_background = 'medium'
]]

vim.cmd("colorscheme gruvbox-material")

-- vim.api.nvim_set_hl(0, 'Normal', {ctermbg = NONE, bg = NONE, fg = NONE})

vim.api.nvim_set_hl(0, 'SignColumn', {ctermbg = 0, bg = transparent})
vim.api.nvim_set_hl(0, 'cursorlinenr',
                    {ctermbg = bold, bg = transparent, fg = '#eef5e6'})
