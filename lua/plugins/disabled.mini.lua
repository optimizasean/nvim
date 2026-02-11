-- ================================================
-- mini.nvim (Suite)
-- https://github.com/nvim-mini/mini.nvim
--
-- Library of 40+ independent Lua modules improving
-- Neovim experience with minimal effort.
-- ================================================
return {
  'nvim-mini/mini.nvim',
  enabled = false,
  version = false, -- Or remove this line to track latest

  -- NOTE: lazy.nvim will merge this config with 'disabled-minimap.lua'
  -- because they both configure the *same* plugin: 'nvim-mini/mini.nvim'.
  --
  -- When you re-enable this, you can set up other mini modules here.
  config = function()
    -- All mini modules are disabled by default.
    -- You can enable them here.
    -- For example:
    -- require('mini.files').setup()
    -- require('mini.ai').setup()
    --
    -- The config for 'mini.map' is in 'disabled-minimap.lua'
    -- and will be merged with this one.
  end
}
