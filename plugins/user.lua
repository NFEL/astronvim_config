return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "User AstroFile",
  keys = {
    { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs :)" },
  },
  opts = {
    background_colour = "#000000",
  },
}
