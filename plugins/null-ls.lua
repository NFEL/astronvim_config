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
    -- config.on_attach = function(client)
    --   if client.server_capabilities.documentFormattingProvider then
    --     vim.api.nvim_create_augroup("format_on_save", { clear = true })
    --     vim.api.nvim_create_autocmd("BufWritePre", {
    --       group = augroup,
    --       buffer = bufnr,
    --       callback = function()
    --         -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
    --         vim.lsp.buf.format { bufnr = bufnr }
    --       end,
    --     })
    --   end
    -- end
    return config -- return final config table
  end,
}
