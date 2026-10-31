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

vim.lsp.config("clangd", {
  cmd = { "clangd", "--function-arg-placeholders=false" },
})

vim.lsp.enable("clangd")
