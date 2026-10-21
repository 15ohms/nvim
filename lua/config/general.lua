-- This configuration is for general Vim configuration. For plugin specific configuration, see the plugin-folder in this directory. If there is none, the plugin is used in default mode with no extra configuration.

local map = function(mode, keys, func, description)
	vim.keymap.set(mode, keys, func, {desc = description}) end

map("n", "<leader>fe", ":Ex<cr>", "[F]ind [F]iles")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs and Panes and all that shit
map("n", "<C-t>", ":tabnew<cr>", "Press <C-t> in your browser.")
map("n", "<C-w>", ":tabclose<cr>", "Press <C-w> in your browser.")
map("n", "<C-v>", ":vsplit<cr>", "Split [V]ertically")
map("n", "<C-h>", ":split<cr>", "[S]plit")

map("n", "<C-S-h>", "<C-w>h", "Vim keybinds do I need say more?")
map("n", "<C-S-j>", "<C-w>j", "Vim keybinds do I need say more?")
map("n", "<C-S-k>", "<C-w>k", "Vim keybinds do I need say more?")
map("n", "<C-S-l>", "<C-w>l", "Vim keybinds do I need say more?")
-- Cycle through tabs with gt and gT

