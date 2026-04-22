-- ================================================
-- tailwindcss
-- https://github.com/tailwindlabs/tailwindcss-intellisense
--
-- Tailwind CSS Language Server
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  name = 'tailwindcss',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    vim.lsp.config('tailwindcss', {})
    vim.lsp.enable('tailwindcss')
  end
}
