-- ================================================
-- graphql
-- https://github.com/graphql/graphiql/tree/main/packages/graphql-language-service-cli
--
-- GraphQL Language Service
--
-- ⚠️ Server managed via Mason (see lua/plugins/mason-lspconfig.lua)
-- ================================================
return function()
  vim.lsp.config('graphql', {})
  vim.lsp.enable('graphql')
end
