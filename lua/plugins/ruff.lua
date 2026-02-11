-- ================================================
-- ruff
-- https://github.com/astral-sh/ruff-lsp
-- ================================================
return {
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('ruff', {})
  end,
}
