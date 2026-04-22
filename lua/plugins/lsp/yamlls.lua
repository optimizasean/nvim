-- ================================================
-- yamlls
-- (See lua/plugins/mason-lspconfig.lua for installation)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'yamlls',
    config = function()
    vim.lsp.config('yamlls', {})
    vim.lsp.enable('yamlls')
  end
}
