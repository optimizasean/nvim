-- ================================================
-- mason-lspconfig.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
--
-- Extension to mason.nvim that makes it easier to use
-- lspconfig with mason.nvim.
--
-- ⚠️ Configurations for these servers are located in lua/plugins/lsp/
-- ================================================
return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
  config = function()
    local mason_lspconfig = require('mason-lspconfig')
    local servers = {
      'graphql',
      'yamlls',
      'marksman',
      'dockerls',
      'docker_compose_language_service',
      'taplo',
      'jsonls',
      'lua_ls',
      'vue_ls',
      'tailwindcss',
      'html',
      'cssls',
      'ts_ls',
      'rust-analyzer',
      'ruff',
      'pyright',
    }

    mason_lspconfig.setup({
      ensure_installed = servers
    })
  end
}
