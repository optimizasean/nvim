-- ================================================
-- lua_ls
-- https://github.com/LuaLS/lua-language-server
--
-- Lua Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return function()
  vim.lsp.config('lua_ls', {
    cmd = { 'lua-language-server' },
  })
  vim.lsp.enable('lua_ls')
end
