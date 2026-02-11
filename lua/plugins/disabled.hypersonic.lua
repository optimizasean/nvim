-- ================================================
-- Hypersonic.nvim
-- https://github.com/tomiis4/hypersonic.nvim
-- ================================================
return {
  'tomiis4/Hypersonic.nvim',
  enabled = false,
  event = 'VeryLazy',
  config = function()
    require('hypersonic').setup()
  end
}
