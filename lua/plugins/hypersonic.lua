-- ================================================
-- Hypersonic.nvim
-- https://github.com/tomiis4/hypersonic.nvim
-- ================================================
return {
  'tomiis4/Hypersonic.nvim',
  event = 'VeryLazy',
  config = function()
    require('hypersonic').setup()
  end
}
