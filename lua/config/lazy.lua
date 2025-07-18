-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set default tab indentation to two spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

require("buffer-closer").setup({
	min_remaining_buffers = 2, -- can not be less than 1
	retirement_minutes = 3, -- can not be less than 1

	-- close the buffer when the given events are triggered (see :h autocmd-events)
	-- if the value is "default", the plugin will use the default events
	-- if the value is "disabled", the plugin will not use any events
	-- if the value is a table, the plugin will use the given events
	events = "default", -- (table, "default", "disabled"):

	timed_check = {
		enabled = false,
		interval_minutes = 1, -- can not be less than 1
	},

	excluded = {
		filetypes = { "lazy", "NvimTree", "mason" },
		buftypes = { "terminal", "nofile", "quickfix", "prompt", "help" },
		filenames = {},
	},

	-- it means that a buffer will not be closed if it is opened in a window
	ignore_working_windows = true,
})

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
  },
})

require("toggleterm").setup{
  open_mapping = [[<c-\>]]
}
