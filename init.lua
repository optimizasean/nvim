-- Set mapleader before any plugins are loaded
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

-- Enable FileType system (must do before autocmds run)
vim.cmd('filetype plugin indent on')

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load core settings
require('core.options')
require('core.indents')
require('core.keymaps')

-- 'plugins' is the directory name under lua/
-- lazy.nvim will automatically load all *.lua files from lua/plugins/
require('lazy').setup('plugins', {
  -- You can add any lazy.nvim options here
  checker = {
    enabled = true,
    notify = true
  },
  performance = {
    rtp = {
      -- These are often recommended to disable for startup speed
      disabled_plugins = {
        'gzip',
        'tarPlugin',
        'zipPlugin'
      }
    }
  }
})
