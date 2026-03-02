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
      'ts_ls',
      'ruff',
      'pyright',
    }

    mason_lspconfig.setup({
      ensure_installed = servers
    })

    -- Set up servers using Neovim 0.11+ native LSP config
    for _, server in ipairs(servers) do
      local lsp_name = server == 'vue_ls' and 'volar' or server
      
      -- typescript-tools.nvim manages ts_ls setup, so we only use mason to install it
      if server ~= 'ts_ls' then
        local config = {}
        
        -- Neovim 0.11+ requires cmd to be set if not using a custom setup function
        -- and the binary name doesn't match the server name perfectly
        if lsp_name == 'lua_ls' then
          config.cmd = { 'lua-language-server' }
        elseif lsp_name == 'volar' then
          config.cmd = { 'vue-language-server', '--stdio' }
        end

        vim.lsp.config(lsp_name, config)
        vim.lsp.enable(lsp_name)
      end
    end
  end
}
