-- ================================================
-- mason-lspconfig.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
--
-- Extension to mason.nvim that makes it easier to use
-- lspconfig with mason.nvim.
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
      'vue_ls', -- volar is called vue_ls in the current Mason registry
      'tailwindcss',
      'html',
      'cssls',
    }

    mason_lspconfig.setup({
      ensure_installed = servers
    })

    -- Set up servers using Neovim 0.11+ native LSP config
    for _, server in ipairs(servers) do
      local lsp_name = server == 'vue_ls' and 'volar' or server
      vim.lsp.config(lsp_name, {})
      vim.lsp.enable(lsp_name)
    end
  end
}
