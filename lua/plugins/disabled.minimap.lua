-- ================================================
-- mini.map (Disabled)
-- https://github.com/nvim-mini/mini.nvim/
-- ================================================
return {
  'nvim-mini/mini.nvim',
  enabled = false,
  version = false, -- Use 'false' for stability or remove line for latest
  config = function()
    -- Enable mini.map (and optionally configure it)
    require('mini.map').setup({
      -- Add any custom configuration here.
      -- For example, to change the window width:
      -- window = { width = 20 },
    })
  end,
}
