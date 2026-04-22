-- ================================================
-- docker_compose_language_service
-- https://github.com/microsoft/compose-language-service
--
-- Docker Compose Language Service
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'docker_compose_language_service',
  config = function()
    vim.lsp.config('docker_compose_language_service', {})
    vim.lsp.enable('docker_compose_language_service')
  end
}
