-- ================================================
-- html
-- https://github.com/hrsh7th/vscode-langservers-extracted
--
-- HTML Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'html',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('html', {})
    vim.lsp.enable('html')
  end
}
