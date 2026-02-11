-- ================================================
-- rustaceanvim
-- https://github.com/mrcjkb/rustaceanvim
--
-- Supercharge your Rust experience in Neovim!
-- A heavily modified fork of rust-tools.nvim
-- ================================================
return {
  'mrcjkb/rustaceanvim',
  version = '^5', -- Recommended
  lazy = false, -- This plugin is already lazy
  config = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = function(client, bufnr)
          local opts = { silent = true, buffer = bufnr }
          vim.keymap.set('n', 'K', '<cmd>RustLsp hover actions<cr>', opts)
          vim.keymap.set('n', '<leader>a', '<cmd>RustLsp codeAction<cr>', opts)
          vim.keymap.set('n', '<leader>e', '<cmd>RustLsp explainError<cr>', opts)
          vim.keymap.set('n', '<leader>r', '<cmd>RustLsp runnables<cr>', opts)
          vim.keymap.set('n', '<leader>d', '<cmd>RustLsp debuggables<cr>', opts)
        end,
      },
    }
  end
}
