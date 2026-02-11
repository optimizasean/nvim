-- ================================================
-- mason-lspconfig.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
--
-- Extension to mason.nvim that makes it easier to use
-- lspconfig with mason.nvim.
-- ================================================
return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
  config = function()
    require('mason-lspconfig').setup({
      ensure_installed = { 'pyright', 'ruff' }
    })
  end
}
