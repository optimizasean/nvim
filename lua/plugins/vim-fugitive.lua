
-- ================================================
-- Fugitive
-- https://github.com/tpope/vim-fugitive
-- ================================================
return {
  'tpope/vim-fugitive',
  cmd = { 'G', 'Git', 'Gstatus', 'Gblame', 'Gdiff', 'Ggrep' },
  config = function()
    -- :set tags^=./.git/tags;
    vim.opt.tags:prepend('./.git/tags;')
  end
}
