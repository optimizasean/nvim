-- ================================================
-- diffview.nvim
-- https://github.com/sindrets/diffview.nvim
-- ================================================
return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggle' },
  dependencies = { 'tpope/vim-fugitive' },
}
