-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<S-j>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<S-k>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<Leader>gm"] = { "<cmd>OpenInGHRepo <cr>", desc = "Open repository in GitHub" },
    ["<Leader>gf"] = { "<cmd>OpenInGHFile <cr>", desc = "Open file in GitHub" },
    -- copy whole file content
    ["<Leader>aa"] = { ":silent :%y+ <CR>", desc = "Copy whole buffer content" },
    ["q"] = { ":noh <cr>", desc = "Disable micro recording thing" },

    -- resize with arrows
    ["<A-k>"] = { ":resize -2<CR>" },
    ["<A-j>"] = { ":resize +2<CR>" },
    ["<A-h>"] = { ":vertical resize -2<CR>" },
    ["<A-l>"] = { ":vertical resize +2<CR>" },
    -- don't yank text on cut ( x )
    ["x"] = { '"_x' },
  },
  i = {
    -- Move current line / block with Alt-j/k ala vscode.
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi" },
    -- Move current line / block with Alt-j/k ala vscode.
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi" },
  },
  v = {
    ["<Leader>gf"] = { "<cmd>OpenInGHFile <cr>", desc = "Open file in GitHub" },
    -- don't yank text on cut ( x )
    ["x"] = { '"_x' },
    -- don't copy the replaced text after pasting in visual mode
    ["p"] = { '"_dP' },
    -- Better indenting
    ["<"] = { "<gv" },
    [">"] = { ">gv" },
    ["<A-j>"] = { ":m '>+1<CR>gv-gv" },
    ["<A-k>"] = { ":m '<-2<CR>gv-gv" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
