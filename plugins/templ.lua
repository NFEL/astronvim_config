local utils = require "astronvim.utils"

return {
  vim.filetype.add { extension = { templ = "templ" } },
  vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*.templ" },
    callback = function()
      if vim.bo.filetype == "templ" then
        local bufnr = vim.api.nvim_get_current_buf()
        local filename = vim.api.nvim_buf_get_name(bufnr)
        local cmd = "templ fmt " .. vim.fn.shellescape(filename)

        vim.fn.jobstart(cmd, {
          on_exit = function()
            -- Reload the buffer only if it's still the current buffer
            if vim.api.nvim_get_current_buf() == bufnr then vim.cmd "e!" end
          end,
        })
      else
        vim.lsp.buf.format()
      end
    end,
  }),
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      local servers = { "gopls", "ccls", "cmake", "tsserver", "templ" }
      for _, lsp in ipairs(servers) do
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, lsp)
      end
      opts.html.filetypes.utils.list_insert_unique(opts.html.filetypes, "templ")
      opts.htmx.filetypes.utils.list_insert_unique(opts.htmx.filetypes, "templ")
    end,
  },

  {
    "joerdav/templ.vim",
    {},
  },
}
