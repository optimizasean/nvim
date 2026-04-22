-- ================================================
-- vue_ls
-- https://github.com/vuejs/language-tools
--
-- Vue Language Server (Volar)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'vue_ls',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    local config = {
      cmd = { 'vue-language-server', '--stdio' },
    }
    vim.lsp.config('vue_ls', config)
    vim.lsp.enable('vue_ls')
  end
}
