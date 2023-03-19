return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "Almo7aya/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        dim_inactive = true,
        inverse = false,
      })
    end,
  },

}
