-- ================================================
-- Manual Persistent Theme Code
-- lua/core/theme_persist.lua
-- ================================================

-- This is where we will save the theme name
local theme_cache_file = vim.fn.stdpath('cache') .. '/colorscheme-persist.lua'

--
-- 1. This function SAVES the theme
--
local function persist_theme()
  -- Get the current theme name
  local current_theme = vim.g.colors_name
  if not current_theme then return end

  -- Write it to the cache file
  local file = io.open(theme_cache_file, 'w')
  if file then
    file:write(current_theme)
    file:close()
  end
end

--
-- 2. This function LOADS the theme
--
local function load_persisted_theme()
  local theme_file = io.open(theme_cache_file, 'r')
  if not theme_file then return end

  -- Read the theme name from the file
  local theme = theme_file:read()
  theme_file:close()

  if theme and #theme > 0 then
    -- Use a protected call (pcall) to prevent crashing
    -- if the theme doesn't exist (e.g., you uninstalled it)
    pcall(vim.cmd, 'colorscheme ' .. theme)
  end
end

--
-- 3. Create the autocmds to run these functions
--
local persist_group = vim.api.nvim_create_augroup('PersistentTheme', { clear = true })

-- Run the LOAD function on startup
vim.api.nvim_create_autocmd('VimEnter', {
  group = persist_group,
  pattern = '*',
  callback = load_persisted_theme,
  desc = 'Load persisted colorscheme on startup',
})

-- Run the SAVE function *after* a theme is changed
vim.api.nvim_create_autocmd('ColorScheme', {
  group = persist_group,
  pattern = '*',
  callback = persist_theme,
  desc = 'Save colorscheme to cache file',
})
