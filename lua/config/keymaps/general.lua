-- This configuration file is for purely vim configuration. There are seperate files for plugins.


-- TODO: loop over all the files to load
require("telescope")

-- Leader/modifier keys vim.g.mapleader = " " vim.g.maplocalleadre = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.keymap.set("n", "<leader>fe", ":Ex<cr>", { desc = "[F]ile [E]xplorer" })
vim.keymap.set("n", "<leader>s", ":w<cr>", { desc = "[W]rite file" })
