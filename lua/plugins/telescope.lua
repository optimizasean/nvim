-- ================================================
-- telescope.nvim
-- https://github.com/nvim-telescope/telescope.nvim
--
-- Find, Filter, Preview, Pick. All lua, all the time.
-- ================================================
return {
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    -- Replaces mru.vim
    { '<leader>f', '<cmd>Telescope oldfiles<cr>', desc = 'Find Recent Files' },

    -- Existing file pickers
    { '<leader>tf', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    { '<leader>tg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
    { '<leader>tb', '<cmd>Telescope buffers<cr>', desc = 'Find Buffers' },
    { '<leader>tt', '<cmd>Telescope help_tags<cr>', desc = 'Find Help Tags' },

    -- LSP Navigation (Added these)
    { 'gd', '<cmd>Telescope lsp_definitions<cr>', desc = '[G]oto [D]efinition' },
    { 'gr', '<cmd>Telescope lsp_references<cr>', desc = '[G]oto [R]eferences' },
    { 'gi', '<cmd>Telescope lsp_implementations<cr>', desc = '[G]oto [I]mplementation' },
    { '<leader>ds', '<cmd>Telescope lsp_document_symbols<cr>', desc = '[D]ocument [S]ymbols' },

    -- Theme Picker
    -- { '<leader>tc', '<cmd>Telescope colorscheme<cr>', desc = 'Find Help Tags' }
    {
      '<leader>tc',
      function()
        require('colorscheme-persist').picker()
      end,
      desc = '[T]heme: (Persistent) Colorschemes'
    },
  },
  config = function()
    require('telescope').setup()
  end
}
