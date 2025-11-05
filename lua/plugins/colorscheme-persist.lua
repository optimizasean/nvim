-- ================================================
-- colorscheme-persist.nvim
-- https://github.com/propet/colorscheme-persist.nvim
-- ================================================
return {
  'propet/colorscheme-persist.nvim',
  -- This MUST be lazy = false to load your theme on startup
  lazy = false,
  -- Set a high priority so it loads before any default theme
  priority = 1001,

  -- All themes are installed here as dependencies
  dependencies = {
    { 'ellisonleao/gruvbox.nvim', lazy = true },
    { 'folke/tokyonight.nvim', lazy = true },
    { 'catppuccin/nvim', lazy = true, name = 'catppuccin' },
    { 'rebelot/kanagawa.nvim', lazy = true },
    { 'sainnhe/everforest', lazy = true },
    { 'rose-pine/neovim', lazy = true, name = 'rose-pine' },
    { 'Mofiqul/dracula.nvim', lazy = true },
    { 'ntk148v/habamax.nvim', lazy = true },
    { 'EdenEast/nightfox.nvim', lazy = true },
    { 'navarasu/onedark.nvim', lazy = true },
    { 'craftzdog/solarized-osaka.nvim', lazy = true },
    { 'sainnhe/gruvbox-material', lazy = true }
  },

  -- Configure the picker
  config = function()
    require('colorscheme-persist').setup({
      -- These find all non-lazy (built-in) themes
      include_built_in = true,
      follow_vim_rtp = true,

      -- This tells the picker the names of the lazy themes and their variants
      theme_names = {
        'gruvbox',
        'tokyonight', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon',
        'catppuccin', 'catppuccin-latte', 'catppuccin-frappe', 'catppuccin-macchiato', 'catppuccin-mocha',
        'kanagawa', 'kanagawa-wave', 'kanagawa-dragon', 'kanagawa-lotus',
        'everforest',
        'rose-pine', 'rose-pine-main', 'rose-pine-moon', 'rose-pine-dawn',
        'dracula',
        'habamax',
        'nightfox', 'dayfox', 'carbonfox',
        'onedark',
        'solarized-osaka',
        'gruvbox-material'
      }
    })
  end
}
