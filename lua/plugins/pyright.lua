-- ================================================
-- pyright
-- https://github.com/microsoft/pyright
--
-- Static Type Checker for Python
-- ================================================
return {
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('pyright', {})
    vim.lsp.enable('pyright')
  end,
}
