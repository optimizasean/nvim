-- ================================================
-- roslyn.nvim (Disabled)
-- https://github.com/seblj/roslyn.nvim
--
-- A sharp Roslyn experience in Neovim!
-- ================================================
return {
  'seblj/roslyn.nvim',
  enabled = false,
  ft = 'cs',
  config = function()
    require('roslyn').setup({
      -- Add any custom configuration here
    })
  end,
}
