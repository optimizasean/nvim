-- ================================================
-- crates.nvim
-- https://github.com/saecki/crates.nvim
--
-- A neovim plugin that helps managing crates.io
-- dependencies.
-- ================================================
return {
  'saecki/crates.nvim',
  enabled = false,
  tag = 'stable',
  ft = { 'rust', 'toml' },
  config = function()
    require('crates').setup({
      completion = {
        cmp = {
          enabled = true
        },
      },
    })
  end
}
