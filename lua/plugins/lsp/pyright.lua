-- ================================================
-- pyright
-- https://github.com/microsoft/pyright
--
-- Pyright (Python)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'pyright',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('pyright', {})
    vim.lsp.enable('pyright')
  end
}
