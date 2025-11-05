-- ================================================
-- crates.nvim
-- https://github.com/saecki/crates.nvim
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
