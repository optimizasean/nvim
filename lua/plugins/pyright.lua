-- ================================================
-- pyright
-- https://github.com/microsoft/pyright
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
