-- ================================================
-- vue_ls
-- (See lua/plugins/mason-lspconfig.lua for installation)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'vue_ls',
    config = function()
    local config = {
      cmd = { 'vue-language-server', '--stdio' },
    }
    vim.lsp.config('vue_ls', config)
    vim.lsp.enable('vue_ls')
  end
}
