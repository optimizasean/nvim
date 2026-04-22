-- ================================================
-- tailwindcss
-- (See lua/plugins/mason-lspconfig.lua for installation)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return {
  'neovim/nvim-lspconfig',
  name = 'tailwindcss',
    config = function()
    vim.lsp.config('tailwindcss', {})
    vim.lsp.enable('tailwindcss')
  end
}
