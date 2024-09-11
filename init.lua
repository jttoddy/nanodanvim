require("config.lazy")
require("config.lspzero-postconfig")

vim.wo.relativenumber = true

vim.cmd("colorscheme kanagawa")

-- Fastlane associations
vim.cmd[[au BufNewFile,BufRead Fastfile set syntax=ruby]]
vim.cmd[[au BufNewFile,BufRead Appfile set syntax=ruby]]
vim.cmd[[au BufNewFile,BufRead Gymfile set syntax=ruby]]
vim.cmd[[au BufNewFile,BufRead Matchfile set syntax=ruby]]
vim.cmd[[au BufNewFile,BufRead Pluginfile set syntax=ruby]]
vim.cmd[[au BufNewFile,BufRead Scanfile set syntax=ruby]]
vim.cmd[[au BufNewFile,BufRead Deliverfile set syntax=ruby]]
