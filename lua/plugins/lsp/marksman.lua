-- ================================================
-- marksman
-- https://github.com/artempyanykh/marksman
--
-- Marksman (Markdown)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'marksman',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('marksman', {})
    vim.lsp.enable('marksman')
  end
}
