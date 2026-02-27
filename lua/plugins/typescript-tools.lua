-- ================================================
-- typescript-tools.nvim
-- https://github.com/pmizio/typescript-tools.nvim
--
-- ⚡ TypeScript integration NeoVim deserves ⚡
-- ================================================
return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig', 'williamboman/mason.nvim' },
  config = function()
    local mason_registry = require("mason-registry")
    local vue_plugin_path = ""
    
    -- Try to find the vue-language-server package in Mason
    local ok, vue_ls = pcall(mason_registry.get_package, "vue-language-server")
    if ok and vue_ls:is_installed() then
      vue_plugin_path = vue_ls:get_install_path() .. "/node_modules/@vue/typescript-plugin"
    end

    -- Use typescript-tools setup instead of lspconfig.ts_ls.setup
    require('typescript-tools').setup({
      tsserver_path = "/home/optimizasean/.local/share/pnpm/tsserver",
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "vue",
      },
      on_attach = function(client, bufnr)
        -- Custom keymaps for TS
        local opts = { buffer = bufnr }
        vim.keymap.set('n', 'gD', '<cmd>TSToolsGoToSourceDefinition<CR>', opts)
        vim.keymap.set('n', '<leader>co', '<cmd>TSToolsOrganizeImports<CR>', opts)
        vim.keymap.set('n', '<leader>rf', '<cmd>TSToolsRenameFile<CR>', opts)
      end,
      settings = {
        -- spawn additional tsserver instance to calculate diagnostics on it
        separate_diagnostic_server = true,
        -- publish_diagnostic_on = 'insert_leave',
        expose_as_code_action = 'all',
        tsserver_plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_plugin_path,
            languages = { "vue" },
          },
        },
        tsserver_file_config = {
          includeInlayParameterNameHints = 'all',
          includeInlayFunctionParameterTypeHints = true,
        },
      },
    })
  end,
}
