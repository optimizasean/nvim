-- ================================================
-- marksman
-- (See lua/plugins/mason-lspconfig.lua for installation)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'marksman',
    config = function()
    vim.lsp.config('marksman', {})
    vim.lsp.enable('marksman')
  end
}
