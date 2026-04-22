-- ================================================
-- taplo
-- (See lua/plugins/mason-lspconfig.lua for installation)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'taplo',
    config = function()
    vim.lsp.config('taplo', {})
    vim.lsp.enable('taplo')
  end
}
