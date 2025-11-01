-- ================================================
-- marks.nvim
-- https://github.com/chentoast/marks.nvim
-- ================================================
return {
  'chentoast/marks.nvim',
  event = 'VeryLazy',
  config = function()
    require('marks').setup()
  end,
}
