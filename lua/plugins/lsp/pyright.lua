-- ================================================
-- pyright
-- (See lua/plugins/mason-lspconfig.lua for installation)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'pyright',
    config = function()
    vim.lsp.config('pyright', {})
    vim.lsp.enable('pyright')
  end
}
