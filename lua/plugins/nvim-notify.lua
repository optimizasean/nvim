-- ================================================
-- nvim-notify
-- https://github.com/rcarriga/nvim-notify
-- ================================================
return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
  config = function()
    vim.notify = require('notify')
    -- You can add setup options here if needed
    -- require('notify').setup({
    --  background_colour = "#000000",
    -- })
  end,
}
