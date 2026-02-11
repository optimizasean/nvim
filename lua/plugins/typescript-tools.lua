-- ================================================
-- typescript-tools.nvim
-- https://github.com/pmizio/typescript-tools.nvim
--
-- ⚡ TypeScript integration NeoVim deserves ⚡
-- ================================================
return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  config = function()
    -- Use typescript-tools setup instead of lspconfig.ts_ls.setup
    require('typescript-tools').setup({
      on_attach = function(client, bufnr)
        -- Custom keymaps for TS
        local opts = { buffer = bufnr }
        vim.keymap.set('n', 'gD', '<cmd>TSToolsGoToSourceDefinition<CR>', opts)
        vim.keymap.set('n', '<leader>co', '<cmd>TSToolsOrganizeImports<CR>', opts)
        vim.keymap.set('n', '<leader>rf', '<cmd>TSToolsRenameFile<CR>', opts)
      end,
      settings = {
        -- spawn additional tsserver instance to calculate diagnostics on it
        separate_diagnostic_server = true,
        -- publish_diagnostic_on = 'insert_leave',
        expose_as_code_action = 'all',
        tsserver_file_config = {
          includeInlayParameterNameHints = 'all',
          includeInlayFunctionParameterTypeHints = true,
        },
      },
    })
  end,
}
