-- ================================================
-- ruff
-- https://github.com/astral-sh/ruff
--
-- Ruff (Python Linter)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'ruff',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('ruff', {})
    vim.lsp.enable('ruff')
  end
}
