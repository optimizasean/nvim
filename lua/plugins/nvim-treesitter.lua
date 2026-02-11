-- ================================================
-- nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter
--
-- Nvim Treesitter configurations and abstraction layer
-- ================================================
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  branch = 'master',
  -- Add rainbow-delimiters as a dependency
  dependencies = { 'HiPhish/rainbow-delimiters.nvim' },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = 'all',
      ignore_install = { 'phpdoc', 'hoon', 'ipkg', 'norg' },
      sync_install = false,
      autopairs = {
        enable = false,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      }
    })

    -- Call rainbow-delimiters.setup() here, after treesitter is set up
    require('rainbow-delimiters.setup').setup()
  end
}
