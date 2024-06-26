return {
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  -- colorscheme = "rose-pine-moon",
  -- colorscheme = "tokyonight",
  -- colorscheme = "kanagawa-dragon",
  -- colorscheme = "dracula",
  colorscheme = "catppuccin-frappe",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    formatting = {
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        ignore_filetypes = { -- disable format on save for specified filetypes
          "julia",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
      },
      timeout_ms = 4000, -- default format timeout
    },
    servers = {},
  },

  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  polish = function()
    -- Making Bg transparent \$_$/
    vim.cmd "highlight Normal guibg=NONE"
    vim.keymap.set("x", "p", function() return 'pgv"' .. vim.v.register .. "y" end, { remap = false, expr = true })
  end,
}
