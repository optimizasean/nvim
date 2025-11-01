-- ================================================
-- nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter
-- ================================================
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  -- Add rainbow-delimiters as a dependency
  dependencies = { 'HiPhish/rainbow-delimiters.nvim' },
  config = function()
    require('nvim-treesitter.configs').setup({
      -- NOTE: We are using the HiPhish/rainbow-delimiters.nvim plugin
      -- instead of the built-in module, as requested.
      -- rainbow = {
      --  enable = true,
      -- },
      ensure_installed = 'all', --
      ignore_install = { 'phpdoc', 'hoon', 'ipkg', 'norg' }, --
      sync_install = false, --
      autopairs = {
        enable = false,
      },
      highlight = {
        enable = true, --
        additional_vim_regex_highlighting = false, --
      },
    })

    -- Call rainbow-delimiters.setup() here, after treesitter is set up
    require('rainbow-delimiters.setup').setup()
  end,
}
