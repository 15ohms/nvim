-- TODO: loop over all .lua files rather than go individually
require("config.lazy")
require("config.telescope")
require("config.general")
require("config.treesitter")


-- Setting Highlight Colors

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'python', 'javascript', 'c', 'cpp' },  -- Add your filetypes
  callback = function()
    vim.treesitter.start()
  end,
})


vim.cmd('highlight @variable guifg=#cba6f7')
vim.cmd('highlight @comment guifg=#fab387')
vim.cmd('highlight @constant guifg=#f38ba8')
vim.cmd('highlight @module guifg=#f5c2e7')
vim.cmd('highlight @string guifg=#89b4fa')
vim.cmd('highlight @string.special.path guifg=#eba0ac')
vim.cmd('highlight @string.special.url guifg=#eba0ac')
vim.cmd('highlight @character.special guifg=#eba0ac')
vim.cmd('highlight @type guifg=#cba6f7')
vim.cmd('highlight @function guifg=#b4befe')
vim.cmd('highlight @operator guifg=#f5c2e7')
