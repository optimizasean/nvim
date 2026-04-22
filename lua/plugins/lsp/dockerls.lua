-- ================================================
-- dockerls
-- https://github.com/rcjsuen/dockerfile-language-server-nodejs
--
-- Docker Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'dockerls',
  config = function()
    vim.lsp.config('dockerls', {})
    vim.lsp.enable('dockerls')
  end
}
