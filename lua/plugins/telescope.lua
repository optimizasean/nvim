-- ================================================
-- telescope.nvim
-- https://github.com/nvim-telescope/telescope.nvim
-- ================================================
return {
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    -- Replaces mru.vim
    { '<leader>f', '<cmd>Telescope oldfiles<cr>', desc = 'Find Recent Files' },
    -- Your existing maps
    { '<leader>tf', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    { '<leader>tg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
    { '<leader>tb', '<cmd>Telescope buffers<cr>', desc = 'Find Buffers' },
    { '<leader>th', '<cmd>Telescope help_tags<cr>', desc = 'Find Help Tags' },
    { '<leader>tc', '<cmd>Telescope colorscheme<cr>', desc = 'Find Help Tags' }
  },
  config = function()
    require('telescope').setup()
  end
}
