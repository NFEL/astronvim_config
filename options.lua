-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    title = true,
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = true, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 1, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = true, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
    matchparen_timeout = 2,
    matchparen_insert_timeout = 2,
    codeium_enabled = true,
    twilight_enabled = true,
    transparent_enabled = true,
    transparent_groups = {
      "Normal",
      "NormalNC",
      "Comment",
      "Constant",
      "Special",
      "Identifier",
      "Statement",
      "PreProc",
      "Type",
      "Underlined",
      "Todo",
      "String",
      "Function",
      "Conditional",
      "Repeat",
      "Operator",
      "Structure",
      "LineNr",
      "NonText",
      "SignColumn",
      "CursorLineNr",
      "EndOfBuffer",
    },
  },
}
