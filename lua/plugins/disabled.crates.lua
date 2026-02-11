-- ================================================
-- crates.nvim (Disabled)
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
    local crates = require('crates')
    crates.setup({
      completion = {
        cmp = {
          enabled = true
        },
      },
    })

    local opts = { silent = true }
    vim.keymap.set('n', '<leader>cct', crates.toggle, opts)
    vim.keymap.set('n', '<leader>ccr', crates.reload, opts)
    vim.keymap.set('n', '<leader>ccv', crates.show_versions_popup, opts)
    vim.keymap.set('n', '<leader>ccf', crates.show_features_popup, opts)
    vim.keymap.set('n', '<leader>ccu', crates.update_crate, opts)
    vim.keymap.set('n', '<leader>cca', crates.update_all_crates, opts)
    vim.keymap.set('n', '<leader>ccy', crates.upgrade_crate, opts)
    vim.keymap.set('n', '<leader>ccx', crates.upgrade_all_crates, opts)
  end
}
