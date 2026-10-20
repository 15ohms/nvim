-- This configuration is for general Vim configuration. For plugin specific configuration, see the plugin-folder in this directory. If there is none, the plugin is used in default mode with no extra configuration.

local map = function(mode, keys, func, description)
	vim.keymap.set(mode, keys, func, {desc = description})
end

map("n", "<leader>fe", ":Ex<cr>", "[F]ind [F]iles")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

