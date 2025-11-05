local opt = vim.opt -- for conciseness

-- Enable filetype detection, plugins, and indentation
-- This is the key command to load default indentation rules
vim.cmd('filetype plugin indent on')

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
-- opt.showcmd = true -- Show pending commands
-- opt.showmode = true -- Show current mode
opt.ruler = true -- Show row/column %
-- opt.number = true -- Show absolute line numbers
opt.relativenumber = true -- Show relative line numbers (hybrid mode when 'number' is also true)
-- opt.laststatus = 2 -- Show the statusline
opt.showmatch = true -- Show matching brackets
opt.textwidth = 0 -- Don't break lines
opt.wrap = false -- (wrap) Disable line wrapping; long lines will not break

-- Tabs and Spacing
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
-- opt.autoindent = true -- Copy indent from current line when starting a new line
-- opt.smartindent = true -- Be smart about indentation

-- Folding
opt.foldenable = true -- Enable folding
opt.foldmethod = 'manual' -- Set fold method

-- Regular Expressions and Searching
opt.magic = true -- Turn magic on for regex
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- Be smart about case
opt.hlsearch = true -- (hlsearch) Highlight all found search matches
opt.incsearch = true -- (incsearch) Show search matches incrementally as you type

-- Spell Check
opt.spell = false

-- Backspace
opt.backspace = { 'eol', 'start', 'indent' }
