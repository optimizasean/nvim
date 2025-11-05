local opt = vim.opt

-- Set global defaults
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

-- Create override rules
local indentGroup = vim.api.nvim_create_augroup('IndentSettings', { clear = true })

-- Override for 2 spaces
vim.api.nvim_create_autocmd('FileType', {
  group = indentGroup,
  pattern = {
    'lua',
    'typescript',
    'javascript',
    'typescriptreact',
    'javascriptreact',
    'vue',
    'json',
    'yaml',
    'toml',
    'html',
    'css',
  },
  callback = function()
    -- This sets the buffer-local 'shiftwidth' to 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.tabstop = 2
  end
})
