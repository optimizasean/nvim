-- ================================================
-- silicon.nvim
-- https://github.com/krivahtoo/silicon.nvim
-- ================================================
return {
  'krivahtoo/silicon.nvim',
  cmd = 'Silicon', -- Lazy-load until you run :Silicon
  build = './install.sh',
  config = function()
    -- Uncomment and configure as needed
    -- require('silicon').setup({
    --  font = 'FiraCode Nerd Font=16',
    --  theme = 'Monokai Extended',
    -- })
  end,
}
