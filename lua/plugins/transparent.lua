-- ================================================
-- transparent.nvim
-- https://github.com/xiyaowong/transparent.nvim
--
-- Remove all background colors to make nvim
-- transparent
-- ================================================
return {
  'xiyaowong/transparent.nvim',
  event = 'VimEnter', -- Load last or this will not set transparent until triggered
  config = function()
    require('transparent').setup({
      -- ... any options you want ...
    })
  end
}
