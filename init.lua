-- TODO: loop over all .lua files rather than go individually
require("config.lazy")
require("config.telescope")
require("config.general")
require("config.treesitter")
require("config.statusline")

-- Setting Highlight Colors

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'python', 'javascript', 'c', 'cpp' },  -- Add your filetypes
  callback = function()
    vim.treesitter.start()
  end,
})


-- Highlighting V2
-- TODO: Semantic highlighting
vim.cmd('highlight @comment guifg=#cad3f5') -- A more neutral color for comments
-- vim.cmd('highlight @comment guifg=#f9e2af') -- A more stand-out color for comments


-- For "declarations", E.G. functions, if/else, etc. These are more stand-out
vim.cmd('highlight @function guifg=#cba6f7')
vim.cmd('highlight @keyword.repeat guifg=#cba6f7')
vim.cmd('highlight @keyword.conditional guifg=#cba6f7')
vim.cmd('highlight @keyword.function guifg=#cba6f7')
vim.cmd('highlight @keyword.return guifg=#cba6f7')
vim.cmd('highlight @keyword.type guifg=#cba6f7')
vim.cmd('highlight @type guifg=#cba6f7')
vim.cmd('highlight @keyword.exception guifg=#cba6f7')


-- For operators and logical statement related stuff
vim.cmd('highlight @keyword.operator guifg=#f5c2e7')
vim.cmd('highlight @operator guifg=#f5c2e7')
vim.cmd('highlight @keyword guifg=#f5c2e7')


-- For variables
vim.cmd('highlight @variable guifg=#f38ba8')
vim.cmd('highlight @variable.builtin guifg=#f38ba8')
vim.cmd('highlight @variable.parameter guifg=#f38ba8')
vim.cmd('highlight @variable.parameter.builtin guifg=#f38ba8')
vim.cmd('highlight @variable.member guifg=#f38ba8')
vim.cmd('highlight @constant guifg=#f38ba8')

-- For statements
vim.cmd('highlight @keyword guifg=#f38ba8')

-- For punctuation, (and such.):
vim.cmd('highlight @punctuation.delimiter guifg=#cad3f5')
vim.cmd('highlight @punctuation.bracket guifg=#cad3f5')
-- Leaving special punctuation blank because
-- A) Many people want different ways to hightlight
-- B) I myself tend to switch between highlighting style for them

-- For *special* characters (like wildcards!)
vim.cmd('highlight @keyword.import guifg=#b7bdf8')
vim.cmd('highlight @keyword.modifier guifg=#b7bdf8')
vim.cmd('highlight @character.special guifg=#b7bdf8')
vim.cmd('highlight @string.special.url guifg=#b7bdf8')
vim.cmd('highlight @string.special.path guifg=#b7bdf8')
vim.cmd('highlight @string.escape guifg=#b7bdf8')
