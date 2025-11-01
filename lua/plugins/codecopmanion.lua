-- ================================================
-- CodeCompanion
-- https://github.com/olimorris/codecompanion.nvim
-- ================================================
return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  cmd = { 'CodeCompanion' },
  config = function()
    require('codecompanion').setup({
      strategies = {
        chat = {
          adapter = 'ollama',
        },
        inline = {
          adapter = 'ollama',
        },
      }, --
    })
  end,
}
