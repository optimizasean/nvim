-- ================================================
-- yamlls
-- https://github.com/redhat-developer/yaml-language-server
--
-- YAML Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'yamlls',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('yamlls', {})
    vim.lsp.enable('yamlls')
  end
}
