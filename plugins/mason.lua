-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      -- ensure_installed = { "lua_ls" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      handlers = {
        prettierd = function()
          require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with {
            condition = function(utils)
              return utils.root_has_file ".prettierrc.yml"
                  or utils.root_has_file ".prettierrc"
                  or utils.root_has_file ".prettierrc.json"
                  or utils.root_has_file ".prettierrc.js"
            end,
          })
        end,
        rustfmt = function()
          require("null-ls").register(require("null-ls").builtins.formatting.rustfmt.with {
            condition = function(utils)
              return utils.root_has_file "rustfmt.toml"
                  or utils.root_has_file "src-tauri/rustfmt.toml"
            end,
          })
        end,
        tailwindcss = function()
          require("null-ls").register(require("null-ls").builtins.diagnostics.tailwindcss.with {
            condition = function(utils)
              return utils.root_has_file "tailwind.config.js"
            end,
          })
        end,
        eslint_d = function()
            return false;
        end,
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
