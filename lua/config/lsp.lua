vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
    }
  }
})

vim.lsp.config('pyright', {
  settings = { python = { pythonPath = '/usr/bin/python3' } }
})
vim.lsp.enable('lua_ls')


vim.lsp.config('gopls', {})

vim.lsp.enable('clangd', {"--function-arg-placeholders=0"})
