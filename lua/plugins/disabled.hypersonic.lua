-- ================================================
-- Hypersonic.nvim
-- https://github.com/tomiis4/hypersonic.nvim
--
-- A powerful NeoVim plugin created to increase your
-- regular expression (RegExp) writing and testing
-- experience.
-- Whether you're a newbie or professional developer,
-- Hypersonic is here to make your life easier and
-- boost your productivity. 
-- ================================================
return {
  'tomiis4/Hypersonic.nvim',
  enabled = false,
  event = 'VeryLazy',
  config = function()
    require('hypersonic').setup()
  end
}
