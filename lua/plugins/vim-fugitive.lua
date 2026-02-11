
-- ================================================
-- Fugitive
-- https://github.com/tpope/vim-fugitive
--
-- fugitive.vim: A Git wrapper so awesome, it should
-- be illegal
-- ================================================
return {
  'tpope/vim-fugitive',
  cmd = { 'G', 'Git', 'Gstatus', 'Gblame', 'Gdiff', 'Ggrep' },
  config = function()
    -- :set tags^=./.git/tags;
    vim.opt.tags:prepend('./.git/tags;')
  end
}
