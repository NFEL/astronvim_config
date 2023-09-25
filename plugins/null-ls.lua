local null_ls = require "null-ls"
local formatting = null_ls.builtins.formatting
return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    config.sources = {
      formatting.stylua,
      formatting.black,
      null_ls.builtins.diagnostics.ruff,
      null_ls.builtins.diagnostics.shellcheck,
      null_ls.builtins.diagnostics.solhint,
      null_ls.builtins.formatting.forge_fmt,
      formatting.prettierd.with {
        env = {
          PRETTIERD_DEFAULT_CONFIG = vim.fn.expand "~/.config/.prettierrc.json",
        },
      },
      formatting.shfmt,
    }
    return config -- return final config table
  end,
}
