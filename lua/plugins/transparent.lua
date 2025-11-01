-- ================================================
-- transparent.nvim
-- https://github.com/xiyaowong/transparent.nvim
-- ================================================
return {
  'xiyaowong/transparent.nvim',
  event = 'VeryLazy',
  config = function()
    require('transparent').setup()
  end,
}
