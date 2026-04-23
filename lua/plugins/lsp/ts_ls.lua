-- ================================================
-- ts_ls
-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/ts_ls.lua
--
-- TypeScript/JavaScript language server (tsserver)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return function()
  vim.lsp.config('ts_ls', {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
      'vue',
    },
    root_dir = vim.fs.dirname(vim.fs.find({ 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' }, { upward = true })[1]),
    init_options = {
      plugins = {
        {
          name = '@vue/typescript-plugin',
          location = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/typescript-plugin",
          languages = { 'vue' },
        },
      },
    },
  })
  vim.lsp.enable('ts_ls')
end
