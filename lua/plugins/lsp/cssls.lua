-- ================================================
-- cssls
-- https://github.com/hrsh7th/vscode-langservers-extracted
--
-- CSS Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'cssls',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('cssls', {})
    vim.lsp.enable('cssls')
  end
}
