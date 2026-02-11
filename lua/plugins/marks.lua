-- ================================================
-- marks.nvim
-- https://github.com/chentoast/marks.nvim
--
-- A better user experience for viewing and
-- interacting with Vim marks.
-- ================================================
return {
  'chentoast/marks.nvim',
  event = 'VeryLazy',
  config = function()
    require('marks').setup()
  end
}
