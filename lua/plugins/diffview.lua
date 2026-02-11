-- ================================================
-- diffview.nvim
-- https://github.com/sindrets/diffview.nvim
--
-- Single tabpage interface for easily cycling through
-- diffs for all modified files for any git rev.
-- ================================================
return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggle' },
  dependencies = { 'tpope/vim-fugitive' },
}
