-- ================================================
-- obsidian.nvim
-- https://github.com/epwalsh/obsidian.nvim
-- ================================================
return {
  'epwalsh/obsidian.nvim',
  ft = 'markdown', -- Lazy-load on markdown files
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Uncomment and configure with your vault path
    -- require('obsidian').setup({
    --  dir = '~/path/to/your/obsidian/vault',
    -- })
  end
}
