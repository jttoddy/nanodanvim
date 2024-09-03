-- Configure LSP
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Configure LSP servers

lsp_zero.setup_servers({'tsserver', 'sourcekit', 'ruby_lsp', 'lua_ls', 'eslint'})

lsp_zero.configure('tsserver', {
  on_attach = require'lsp_compl'.attach
})

lsp_zero.configure('sourcekit', {
  on_attach = require'lsp_compl'.attach
})

lsp_zero.configure('ruby_lsp', {
  on_attach = require'lsp_compl'.attach
})

lsp_zero.configure('lua_ls', {
  on_attach = require'lsp_compl'.attach
})

lsp_zero.configure('eslint', {
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})
