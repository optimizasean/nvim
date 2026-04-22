-- ================================================
-- lua_ls
-- https://github.com/LuaLS/lua-language-server
--
-- Lua Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'lua_ls',
  config = function()
    local config = {
      cmd = { 'lua-language-server' },
    }
    vim.lsp.config('lua_ls', config)
    vim.lsp.enable('lua_ls')
  end
}
