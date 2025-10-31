local map = vim.keymap.set

-- Smart way to move between windows
map({ 'n', 'i', 'v' }, '<C-j>', '<C-W>j', { silent = true, desc = 'Window down' })
map({ 'n', 'i', 'v' }, '<C-k>', '<C-W>k', { silent = true, desc = 'Window up' })
map({ 'n', 'i', 'v' }, '<C-h>', '<C-W>h', { silent = true, desc = 'Window left' })
map({ 'n', 'i', 'v' }, '<C-l>', '<C-W>l', { silent = true, desc = 'Window right' })

-- Disable highlight when <Leader><CR> is pressed
map('n', '<Leader><CR>', ':noh<CR>', { silent = true, desc = 'Clear search highlight' })
