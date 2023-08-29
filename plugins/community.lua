return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.angular" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.yaml" },

  { import = "astrocommunity.diagnostics.trouble-nvim" },

  { import = "astrocommunity.utility.nvim-toggler" },

  { import = "astrocommunity.git.octo-nvim" },

  { import = "astrocommunity.color.ccc-nvim" },

  { import = "astrocommunity.markdown-and-latex.peek-nvim" },
}
