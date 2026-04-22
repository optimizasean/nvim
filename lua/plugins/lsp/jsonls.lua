-- ================================================
-- jsonls
-- https://github.com/hrsh7th/vscode-langservers-extracted
--
-- JSON Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'jsonls',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('jsonls', {})
    vim.lsp.enable('jsonls')
  end
}
