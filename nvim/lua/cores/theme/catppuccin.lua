require("catppuccin").setup({
  background = {
    light = "latte",
    dark = "mocha",
  },
  color_overrides = {
    latte = {
      rosewater = "#c14a4a",
      flamingo = "#c14a4a",
      red = "#c14a4a",
      maroon = "#c14a4a",
      pink = "#945e80",
      mauve = "#945e80",
      peach = "#c35e0a",
      yellow = "#b47109",
      green = "#6c782e",
      teal = "#4c7a5d",
      sky = "#4c7a5d",
      sapphire = "#4c7a5d",
      blue = "#45707a",
      green = "#51e324",
      lavender = "#45707a",
      text = "#654735",
      subtext1 = "#73503c",
      subtext0 = "#805942",
      overlay2 = "#8c6249",
      overlay1 = "#8c856d",
      overlay0 = "#a69d81",
      surface2 = "#bfb695",
      surface1 = "#d1c7a3",
      surface0 = "#e3dec3",
      base = "#f9f5d7",
      mantle = "#f0ebce",
      crust = "#e8e3c8",
    },
    mocha = {
      rosewater = "#ea6962",
      flamingo = "#ea6962",
      red = "#ea6962",
      maroon = "#ea6962",
      pink = "#d3869b",
      mauve = "#d3869b",
      peach = "#e78a4e",
      yellow = "#d8a657",
      green = "#a9b665",
      teal = "#89b482",
      sky = "#89b482",
      sapphire = "#89b482",
      blue = "#7daea3",
      lavender = "#7daea3",
      text = "#ebdbb2",
      subtext1 = "#d5c4a1",
      subtext0 = "#bdae93",
      overlay2 = "#a89984",
      overlay1 = "#928374",
      overlay0 = "#595959",
      surface2 = "#4d4d4d",
      surface1 = "#404040",
      surface0 = "#292929",
      base = "#181818",
      mantle = "#191b1c",
      crust = "#141617",
    },
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = { "bold" },
    functions = { "bold" },
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = { "bold" },
    booleans = { "bold" },
    properties = {},
    types = { "bold" },
    operators = {},
  },
  transparent_background = false,
  show_end_of_buffer = false,
  custom_highlights = function(colors)
    return {
      -- Flash.nvim
      FlashMatch = { bg = colors.base, fg = colors.teal },
      FlashLabel = { bg = colors.base, fg = colors.teal },
      -- Flash.nvim

      -- NvimTree
      NvimTreeStatuslineNc = { bg = colors.base, fg = colors.surface0 },
      NvimTreeWinSeparator = { bg = colors.base, fg = colors.surface0 },
      WinSeparator = { bg = colors.base, fg = colors.surface0 },
      NvimTreeNormal = { bg = colors.base, fg = colors.text },
      -- NvimTree

      CmpItemMenu = { fg = colors.surface2 },
      CursorLineNr = { fg = colors.green, style = { "bold" } },
      FloatBorder = { bg = colors.base, fg = colors.green },
      GitSignsChange = { fg = colors.peach },
      LineNr = { fg = colors.overlay0 },
      LspInfoBorder = { link = "FloatBorder" },
      NeoTreeDirectoryIcon = { fg = colors.subtext1 },
      NeoTreeDirectoryName = { fg = colors.subtext1 },
      NormalFloat = { bg = colors.base, fg = "#ffffff" },
      VertSplit = { bg = colors.base, fg = colors.surface0 },
      WhichKeyFloat = { bg = colors.crust },
      YankHighlight = { bg = colors.surface2 },
      FidgetTask = { fg = colors.subtext2 },
      FidgetTitle = { fg = colors.peach },

      IblIndent = { fg = colors.surface0 },
      IblScope = { fg = colors.overlay0 },

      Boolean = { fg = colors.mauve },
      Number = { fg = colors.mauve },
      Float = { fg = colors.mauve },

      PreProc = { fg = colors.mauve },
      PreCondit = { fg = colors.mauve },
      Include = { fg = colors.mauve },
      Define = { fg = colors.mauve },
      Conditional = { fg = colors.red },
      Repeat = { fg = colors.red },
      Keyword = { fg = colors.red },
      Typedef = { fg = colors.red },
      Exception = { fg = colors.red },
      Statement = { fg = colors.red },

      Error = { fg = colors.red },
      StorageClass = { fg = colors.peach },
      Tag = { fg = colors.peach },
      Label = { fg = colors.peach },
      Structure = { fg = colors.peach },
      Operator = { fg = colors.peach },
      Title = { fg = colors.peach },
      Special = { fg = colors.yellow },
      SpecialChar = { fg = colors.yellow },
      Type = { fg = colors.yellow, style = { "bold" } },
      Function = { fg = colors.green, style = { "bold" } },
      Delimiter = { fg = colors.subtext2 },
      Ignore = { fg = colors.subtext2 },
      Macro = { fg = colors.teal },

      NotificationInfo = { fg = colors.text },
      NotificationWarning = { fg = colors.text },
      NotificationError = { fg = colors.text },

      SignColumn = { bg = colors.base, fg = colors.base },
    }
  end,
})

vim.cmd.colorscheme("catppuccin-mocha")

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    local current_working_dir = vim.fn.getcwd()
    -- check if current dir endof with "perx-api"
    if string.match(current_working_dir, "perx%-api$") then
      vim.cmd.colorscheme("slate")
    end
  end,
})
