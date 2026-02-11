-- ================================================
-- nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig
--
-- Quickstart configs for Nvim LSP.
-- ================================================
return {
  'neovim/nvim-lspconfig',
  event = 'BufReadPre', -- Load LSP config when a file is opened
  dependencies = {
    -- These two plugins make managing LSP servers much easier
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    -- Set up mason.nvim
    require('mason').setup()

    -- Set up mason-lspconfig.nvim
    -- This plugin ensures that any servers you install with Mason
    -- are automatically configured by lspconfig.
    require('mason-lspconfig').setup({
      -- You can list servers here to ensure they are installed
      -- Example: ensure_installed = { 'lua_ls', 'tsserver' }
    })

    -- Basic lspconfig setup.
    -- lspconfig will now automatically pick up servers installed via Mason.

    -- Example: You can still add custom settings for specific servers.
    -- local lspconfig = require('lspconfig')
    -- lspconfig.lua_ls.setup({
    --  settings = {
    --    Lua = { diagnostics = { globals = {'vim'} } }
    --  }
    -- })

    -- Example keymaps for LSP functionality
    -- You can place these in a more central keymap file if you have one
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Hover' })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP Go to Definition' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'LSP Go to References' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Action' })
  end
}
