-- ================================================
-- marksman
-- (See lua/plugins/mason-lspconfig.lua for installation)
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return function()
  vim.lsp.config('marksman', {})
  vim.lsp.enable('marksman')
end
