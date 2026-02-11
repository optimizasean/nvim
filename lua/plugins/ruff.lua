-- ================================================
-- ruff
-- https://github.com/astral-sh/ruff-lsp
--
-- A Language Server Protocol implementation for Ruff.
-- ================================================
return {
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('ruff', {})
  end,
}
