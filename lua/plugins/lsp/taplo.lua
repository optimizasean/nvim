-- ================================================
-- taplo
-- https://github.com/tamasfe/taplo
--
-- Taplo (TOML)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'taplo',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('taplo', {})
    vim.lsp.enable('taplo')
  end
}
