-- ================================================
-- pyright
-- https://github.com/microsoft/pyright
--
-- Static Type Checker for Python
-- ================================================
return {
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      pyright = {},
    },
  },
  config = function()
    vim.lsp.config('pyright', {})
  end,
}
