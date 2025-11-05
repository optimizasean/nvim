local opt = vim.opt -- for conciseness

-- System
opt.ttyfast = true -- Make TTY faster

-- File, Font, and Backup
opt.backup = false -- No backups
opt.writebackup = false -- No backups
opt.swapfile = false -- No swapfile
opt.fileformats = { 'unix', 'dos', 'mac' } -- Prefer unix formats
opt.encoding = 'utf-8' -- Set utf8 as standard

-- User Interface
-- vim.cmd.colorscheme('vim') -- Set colorscheme (vim.cmd is for running Ex commands)
vim.cmd.syntax('enable') -- Enable syntax highlighting
opt.termguicolors = true -- Neovim will try 24-bit RGB colors if true (required for colorschemes)
opt.showcmd = true -- Show pending commands
opt.showmode = true -- Show current mode
opt.ruler = true -- Show row/column %
opt.number = true -- Show absolute line numbers
opt.laststatus = 2 -- Show the statusline
opt.showmatch = true -- Show matching brackets
opt.textwidth = 0 -- Don't break lines

-- Folding
opt.foldenable = true -- Enable folding
opt.foldmethod = 'manual' -- Set fold method

-- Text, tab and indent related
opt.expandtab = true -- Convert tabs to spaces
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.softtabstop = 4 -- Treat 4 spaces as single backspace
opt.shiftwidth = 4 -- Shift lines by 4 spaces
opt.autoindent = true -- Auto indent based on previous line
vim.cmd('filetype plugin indent on')

-- Regular Expressions and Searching
opt.magic = true -- Turn magic on for regex
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- Be smart about case
opt.hlsearch = true -- Highlight found searches
opt.incsearch = true -- Incremental search

-- Spell Check
opt.spell = false

-- Backspace
opt.backspace = { 'eol', 'start', 'indent' }
