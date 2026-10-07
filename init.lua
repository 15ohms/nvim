-- This is needed so that it lua prepends /lua to each path when searching
vim.opt.rtp:prepend(vim.fn.stdpath("config") .. "/lua")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

require("config.lazy")
require("config.keymaps")

