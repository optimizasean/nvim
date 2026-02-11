-- ================================================
-- mason.nvim
-- https://github.com/williamboman/mason.nvim
--
-- Portable package manager for Neovim that runs
-- everywhere Neovim runs. Easily install and manage
-- LSP servers, DAP servers, linters, and formatters.
-- ================================================
return {
  'williamboman/mason.nvim',
  cmd = { 'Mason', 'MasonInstall', 'MasonInstallAll', 'MasonUpdate' },
  config = function()
    require('mason').setup()
  end
}
