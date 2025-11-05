-- ================================================
-- mason.nvim
-- https://github.com/williamboman/mason.nvim
-- ================================================
return {
  'williamboman/mason.nvim',
  cmd = { 'Mason', 'MasonInstall', 'MasonInstallAll', 'MasonUpdate' },
  config = function()
    require('mason').setup()
  end
}
