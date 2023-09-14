return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },

    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<C-q>"] = { "<cmd>b#<cr>", desc = "sweet sweet ctrl tab action $_$" }, -- Remove annoying force quit in astronvim default configuration with jump to previous buffer
    ["<Space>?"] = { "<cmd>CBccbox 19<cr>", desc = "Boxed Comment " },
    ["<Space>z"] = { "<cmd>ZenMode<cr>", desc = "Zen mode !" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
