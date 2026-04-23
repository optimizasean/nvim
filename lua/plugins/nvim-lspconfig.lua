-- Silence the Volar 2.0+ warning about missing TS clients when running standalone.
-- This triggers during nvim-lspconfig loading, so we catch it early.
local original_notify = vim.notify
vim.notify = function(msg, ...)
  if type(msg) == "string" and msg:match("Could not find `ts_ls`") then
    return
  end
  return original_notify(msg, ...)
end

-- ================================================
-- nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig
--
-- Quickstart configs for Nvim LSP.
--
-- ⚠️ This plugin is interdependent with Mason.
-- 🛠️ Mason handles the installation and management of LSP servers.
-- ⚙️ Individual configurations for each server are located in lua/plugins/lsp/
-- ================================================
return {
  'neovim/nvim-lspconfig',
  event = 'BufReadPre', -- Load LSP config when a file is opened
  dependencies = {
    -- These two plugins make managing LSP servers much easier
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    -- Load individual server configurations from lua/plugins/lsp/
    -- We use the Neovim 0.11+ native LSP API (vim.lsp.config/enable)
    local lsp_configs_dir = vim.fn.stdpath("config") .. "/lua/plugins/lsp"
    local files = vim.fn.globpath(lsp_configs_dir, "*.lua", false, true)
    
    for _, file in ipairs(files) do
      local filename = vim.fn.fnamemodify(file, ":t:r")
      -- Skip specialized plugins that are managed separately in lazy.nvim
      if filename ~= "typescript-tools" and filename ~= "rustaceanvim" then
        local ok, config_fn = pcall(require, "plugins.lsp." .. filename)
        if ok and type(config_fn) == "function" then
          config_fn()
        end
      end
    end

    -- Example keymaps for LSP functionality
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Hover' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Action' })
  end
}
