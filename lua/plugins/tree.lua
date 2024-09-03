-- NvimTree Keymappings
local function tree_on_attach(bufnr)
  local tree_api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default
  tree_api.config.mappings.default_on_attach(bufnr)

  -- custom
  vim.keymap.set('n', '<leader>tt', tree_api.tree.toggle, {})
  vim.keymap.set('n', '<leader>tf', tree_api.tree.find_file, {})
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      on_attach = tree_on_attach,
    }
  end,
}
