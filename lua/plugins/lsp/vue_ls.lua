-- ================================================
-- vue_ls
-- https://github.com/vuejs/language-tools
--
-- Vue Language Server (Volar 2.0+)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return function()
  local mason_packages_path = vim.fn.stdpath("data") .. "/mason/packages"
  local tsdk_path = mason_packages_path .. "/typescript-language-server/node_modules/typescript/lib"

  -- Neovim 0.11+ Native LSP Config
  -- We use the name 'vue_ls' and Standalone Mode (hybridMode = false).
  -- The warning is silenced at the root nvim-lspconfig level.
  vim.lsp.config('vue_ls', {
    cmd = { 'vue-language-server', '--stdio' },
    filetypes = { 'vue' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' }, { upward = true })[1]),
    init_options = {
      typescript = {
        tsdk = tsdk_path,
      },
      vue = {
        hybridMode = false,
      },
    },
  })
  vim.lsp.enable('vue_ls')
end
