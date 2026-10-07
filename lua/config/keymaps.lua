-- Setting some Settings 
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Remapping (Just Vim)
vim.g.mapleader = " "
vim.keymap.set('n', "<leader>pf", vim.cmd.Ex, { noremap = true, silent = true })
-- Credit: https://github.com/CTNOriginals/nvim/blob/main/lua/ctn/core/keymaps/navigation.lua
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Remapping Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', "<leader>ff", builtin.find_files, { noremap = true, silent = true })

-- Remapping neotree
vim.keymap.set('n', "\\", ":Neotree toggle<cr>")
vim.keymap.set('n', "   
