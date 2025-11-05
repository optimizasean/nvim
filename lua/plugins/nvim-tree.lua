-- ================================================
-- nvim-tree.lua
-- https://github.com/nvim-tree/nvim-tree.lua
-- ================================================
return {
  'nvim-tree/nvim-tree.lua',
  cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeClose', 'NvimTreeRefresh' },
  dependencies = {
    -- nvim-web-devicons (optional, for file icons)
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>nn', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle NvimTree' },
    { '<leader>no', '<cmd>NvimTreeOpen<cr>', desc = 'Open NvimTree' },
    { '<leader>nc', '<cmd>NvimTreeClose<cr>', desc = 'Close NvimTree' },
    { '<leader>nr', '<cmd>NvimTreeRefresh<cr>', desc = 'Refresh NvimTree' },
  },
  config = function()
    require('nvim-tree').setup()
  end
}
