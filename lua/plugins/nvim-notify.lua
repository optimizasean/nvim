-- ================================================
-- nvim-notify
-- https://github.com/rcarriga/nvim-notify
-- ================================================
return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
  config = function()
    -- 1. Get the 'notify' function from the plugin
    local notify = require('notify')

    -- 2. Call the setup function on it
    notify.setup({
      background_colour = "NormalFloat", -- Load from colorscheme (transparent.nvim works on this)
      -- background_colour = "#000000", -- Default for transparent backgrounds
    })

    -- 3. Explicitly set the global vim.notify
    vim.notify = notify
  end
}
