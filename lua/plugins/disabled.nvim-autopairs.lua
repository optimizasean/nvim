-- ================================================
-- nvim-autopairs
-- https://github.com/windwp/nvim-autopairs
--
-- autopairs for neovim written in lua.
-- ================================================
return {
  'windwp/nvim-autopairs',
  enabled = false,
  event = 'InsertEnter',
  config = function()
    require('nvim-autopairs').setup({})
  end
}
