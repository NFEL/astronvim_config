return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.go" },
  -- { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },

  { import = "astrocommunity.programming-language-support.rest-nvim" },
  { import = "astrocommunity.programming-language-support.nvim-jqx" },

  { import = "astrocommunity.diagnostics.trouble-nvim" },

  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },

  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.media.drop-nvim" },

  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.color.twilight-nvim" },

  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
}
