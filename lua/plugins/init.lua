return {
  -- ===================================================================
  --
  -- Core & Library
  --
  -- ===================================================================

  -- ================================================
  -- plenary.nvim
  -- https://github.com/nvim-lua/plenary.nvim
  -- ================================================
  {
    'nvim-lua/plenary.nvim',
    lazy = true, -- This is a library, so it'll load when needed
  },

  -- ================================================
  -- nvim-treesitter
  -- nvim-treesitter.vim
  -- https://github.com/nvim-treesitter/nvim-treesitter
  -- https://vimawesome.com/plugin/nvim-treesitter
  -- ================================================
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    -- Add rainbow-delimiters as a dependency
    dependencies = { 'HiPhish/rainbow-delimiters.nvim' },
    config = function()
      require('nvim-treesitter.configs').setup({
        -- NOTE: We are using the HiPhish/rainbow-delimiters.nvim plugin
        -- instead of the built-in module, as requested.
        -- rainbow = {
        --   enable = true,
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
  },

  -- ===================================================================
  --
  -- UI
  --
  -- ===================================================================

  -- ================================================
  -- nvim-tree.lua
  -- https://github.com/nvim-tree/nvim-tree.lua
  -- ================================================
  {
    'nvim-tree/nvim-tree.lua',
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeClose', 'NvimTreeRefresh' },
    dependencies = {
      -- nvim-web-devicons (optional, for file icons)
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      { '<leader>nn', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle NvimTree' },
      { '<leader>no', '<cmd>NvimTreeOpen<cr>', desc = 'Open NvimTree' },
      { '<leader>nc', '<cmd>NvimTreeClose<cr>', desc = 'Close NvimTree' },
      { '<leader>nr', '<cmd>NvimTreeRefresh<cr>', desc = 'Refresh NvimTree' },
    },
    config = function()
      require('nvim-tree').setup() --
    end,
  },

  -- ================================================
  -- Lualine
  -- https://github.com/nvim-lualine/lualine.nvim
  -- ================================================
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' }, --
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' }, --
          lualine_c = { 'filename' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      })
    end,
  },

  -- ================================================
  -- todo-comments.nvim
  -- https://github.com/folke/todo-comments.nvim
  -- ================================================
  {
    'folke/todo-comments.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('todo-comments').setup({
        signs = true,
        sign_priority = 8,
        keywords = {
          FIX = { icon = ' ', color = 'error', alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE', 'BROKE', 'BROKEN', 'BUG' } }, --
          TODO = { icon = ' ', color = 'info' }, --
          HACK = { icon = ' ', color = 'warning' },
          WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
          PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
          NOTE = { icon = ' ', color = 'hint', alt = { 'INFO', 'HINT' } },
          TEST = { icon = '⏲ ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
        },
        gui_style = {
          fg = 'NONE', --
          bg = 'BOLD', --
        },
        merge_keywords = true,
        highlight = {
          multiline = true,
          multiline_pattern = '^.', --
          multiline_context = 10,
          before = '',
          keyword = 'wide', --
          after = 'fg',
          pattern = [[.*<(KEYWORDS)\s*:]], --
          comments_only = true,
          max_line_len = 400,
          exclude = {},
        },
        colors = {
          error = { 'DiagnosticError', 'ErrorMsg', '#DC2626' },
          warning = { 'DiagnosticWarn', 'WarningMsg', '#FBBF24' },
          info = { 'DiagnosticInfo', '#2563EB' },
          hint = { 'DiagnosticHint', '#10B981' },
          default = { 'Identifier', '#7C3AED' },
          test = { 'Identifier', '#FF00FF' },
        }, --
        search = {
          command = 'rg',
          args = {
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
          }, --
          pattern = [[\b(KEYWORDS):]], --
        },
      })
    end,
  },

  -- ================================================
  -- transparent.nvim
  -- https://github.com/xiyaowong/transparent.nvim
  -- ================================================
  {
    'xiyaowong/transparent.nvim',
    event = 'VeryLazy',
    config = function()
      require('transparent').setup()
    end,
  },

  -- ================================================
  -- nvim-notify
  -- https://github.com/rcarriga/nvim-notify
  -- ================================================
  {
    'rcarriga/nvim-notify',
    event = 'VeryLazy',
    config = function()
      vim.notify = require('notify')
      -- You can add setup options here if needed
      -- require('notify').setup({
      --   background_colour = "#000000",
      -- })
    end,
  },

  -- ================================================
  -- Hypersonic.nvim
  -- https://github.com/tomiis4/hypersonic.nvim
  -- ================================================
  {
    'tomiis4/Hypersonic.nvim',
    event = 'VeryLazy',
    config = function()
      require('hypersonic').setup()
    end,
  },

  -- ================================================
  -- rainbow-delimeters.nvim
  -- https://gitlab.com/HiPhish/rainbow-delimiters.nvim
  -- ================================================
  -- NOTE: This is now loaded as a dependency of nvim-treesitter
  -- and configured from within the nvim-treesitter config block.
  -- {
  --   'HiPhish/rainbow-delimiters.nvim',
  --   -- This plugin must load after treesitter
  --   dependencies = { 'nvim-treesitter/nvim-treesitter' },
  --   event = 'BufWinEnter', -- Load when a buffer window is entered
  --   config = function()
  --     require('rainbow-delimiters.setup').setup()
  --   end,
  -- },

  -- ===================================================================
  --
  -- File Navigation
  --
  -- ===================================================================

  -- ================================================
  -- telescope.nvim
  -- https://github.com/nvim-telescope/telescope.nvim
  -- ================================================
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      -- Replaces mru.vim
      { '<leader>f', '<cmd>Telescope oldfiles<cr>', desc = 'Find Recent Files' },
      -- Your existing maps
      { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' }, --
      { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' }, --
      { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Find Buffers' }, -- FIX: Was TDelescope
      { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Find Help Tags' }, --
    },
    config = function()
      require('telescope').setup()
    end,
  },

  -- ================================================
  -- marks.nvim
  -- https://github.com/chentoast/marks.nvim
  -- ================================================
  {
    'chentoast/marks.nvim',
    event = 'VeryLazy',
    config = function()
      require('marks').setup()
    end,
  },

  -- ===================================================================
  --
  -- Git
  --
  -- ===================================================================

  -- ================================================
  -- Fugitive
  -- FUGITIVE.VIM
  -- https://github.com/tpope/vim-fugitive
  -- https://vimawesome.com/plugin/fugitive-vim
  -- ================================================
  {
    'tpope/vim-fugitive',
    cmd = { 'G', 'Git', 'Gstatus', 'Gblame', 'Gdiff', 'Ggrep' },
    config = function()
      -- :set tags^=./.git/tags;
      vim.opt.tags:prepend('./.git/tags;')
    end,
  },

  -- ================================================
  -- diffview.nvim
  -- https://github.com/sindrets/diffview.nvim
  -- ================================================
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggle' },
    dependencies = { 'tpope/vim-fugitive' },
  },

  -- ===================================================================
  --
  -- LSP (Language Server Protocol)
  --
  -- ===================================================================

  -- ================================================
  -- LSP Stack (Mason, LSPConfig)
  -- https://github.com/williamboman/mason.nvim
  -- https://github.com/williamboman/mason-lspconfig.nvim
  -- https://github.com/neovim/nvim-lspconfig
  -- ================================================
  {
    'williamboman/mason.nvim',
    cmd = { 'Mason', 'MasonInstall', 'MasonInstallAll', 'MasonUpdate' },
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
    config = function()
      require('mason-lspconfig').setup()
    end,
  },
  {
    'neovim/nvim-lspconfig',
    event = 'BufReadPre', -- Load LSP config when a file is opened
    config = function()
      -- Your LSP setup from the EOF block
      -- require('lspconfig').lua_ls.setup {}
      -- require('lspconfig').rust_analyzer.setup {}
    end,
  },

  -- ===================================================================
  --
  -- Editing
  --
  -- ===================================================================

  -- ================================================
  -- Vim visual multi
  -- vim-visual-multi
  -- https://github.com/mg979/vim-visual-multi
  -- https://vimawesome.com/plugin/vim-multiple-cursors
  -- ================================================
  {
    'mg979/vim-visual-multi',
    keys = { { '\\' } },
    config = function()
      vim.g.VM_leader = '\\'
      vim.g.multi_cursor_use_default_mapping = 0
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps = {
        ['Find Under'] = '<C-n>',
        ['Find Subword Under'] = '<C-n>',
        ['Select All'] = '\\A', --
        ['Start Regex Search'] = '\\/',
        ['Add Cursor Down'] = '<C-Down>',
        ['Add Cursor Up'] = '<C-Up>',
        ['Add Cursor At Pos'] = '\\\'',
        ['Visual Regex'] = '\\/', --
        ['Visual All'] = '\\A',
        ['Visual Add'] = '\\a',
        ['Visual Find'] = '\\f',
        ['Visual Cursors'] = '\\c',
        ['Switch Mode'] = '<Tab>',
        ['Find Next'] = ']',
        ['Find Prev'] = '[',
        ['Goto Next'] = '}',
        ['Goto Prev'] = '{', --
        ['Seek Next'] = '<C-f>',
        ['Seek Prev'] = '<C-b>',
        ['Skip Region'] = 'q',
        ['Remove Region'] = 'Q',
        ['Invert Direction'] = 'o',
        ['Find Operator'] = 'm',
        ['Surround'] = 'S',
        ['Replace Pattern'] = 'R',
        ['Tools Menu'] = '\\`',
        ['Show Registers'] = '\\"', --
        ['Case Setting'] = '\\c',
        ['Toggle Whole Word'] = '\\w',
        ['Transpose'] = '\\t',
        ['Align'] = '\\a',
        ['Duplicate'] = '\\d',
        ['Rewrite Last Search'] = '\\r',
        ['Merge Regions'] = '\\m',
        ['Split Regions'] = '\\s',
        ['Remove Last Region'] = '\\q',
        ['Visual Subtract'] = '\\s',
        ['Case Conversion Menu'] = '\\C',
        ['Search Menu'] = '\\S', --
        ['Run Normal'] = '\\z',
        ['Run Last Normal'] = '\\Z',
        ['Run Visual'] = '\\v',
        ['Run Last Visual'] = '\\V',
        ['Run Ex'] = '\\x', --
        ['Run Last Ex'] = '\\X',
        ['Run Macro'] = '\\@',
        ['Align Char'] = '\\<',
        ['Align Regex'] = '\\>', --
        ['Numbers'] = '\\n',
        ['Numbers Append'] = '\\N',
        ['Zero Numbers'] = '\\0n',
        ['Zero Numbers Append'] = '\\0N',
        ['Shrink'] = '\\-',
        ['Enlarge'] = '\\+', --
        ['Toggle Block'] = '\\<BS>',
        ['Toggle Single Region'] = '\\<CR>',
        ['Toggle Multiline'] = '\\M',
      }
    end,
  },

  -- ================================================
  -- Comment.nvim
  -- https://github.com/numToStr/Comment.nvim
  -- ================================================
  {
    'numToStr/Comment.nvim',
    event = 'VeryLazy',
    config = function()
      require('Comment').setup()
    end,
  },

  -- ================================================
  -- silicon.nvim
  -- https://github.com/krivahtoo/silicon.nvim
  -- ================================================
  {
    'krivahtoo/silicon.nvim',
    cmd = 'Silicon', -- Lazy-load until you run :Silicon
    build = './install.sh',
    config = function()
      -- Uncomment and configure as needed
      -- require('silicon').setup({
      --   font = 'FiraCode Nerd Font=16',
      --   theme = 'Monokai Extended',
      -- })
    end,
  },

  -- ===================================================================
  --
  -- Language Specific
  --
  -- ===================================================================

  -- ================================================
  -- crates.nvim
  -- https://github.com/saecki/crates.nvim
  -- ================================================
  {
    'saecki/crates.nvim',
    tag = 'stable', --
    ft = { 'rust', 'toml' },
    config = function()
      require('crates').setup({
        completion = {
          cmp = {
            enabled = true,
          },
        },
      })
    end,
  },

  -- ===================================================================
  --
  -- AI
  --
  -- ===================================================================

  -- ================================================
  -- CodeCompanion
  -- https://github.com/olimorris/codecompanion.nvim
  -- ================================================
  {
    'olimorris/codecompanion.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-treesitter/nvim-treesitter"
    },
    cmd = { 'CodeCompanion' },
    config = function()
      require('codecompanion').setup({
        strategies = {
          chat = {
            adapter = 'ollama',
          },
          inline = {
            adapter = 'ollama',
          },
        }, --
      })
    end,
  },

  -- ===================================================================
  --
  -- Note Taking
  --
  -- ===================================================================

  -- ================================================
  -- obsidian.nvim
  -- https://github.com/epwalsh/obsidian.nvim
  -- ================================================
  {
    'epwalsh/obsidian.nvim',
    ft = 'markdown', -- Lazy-load on markdown files
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- Uncomment and configure with your vault path
      -- require('obsidian').setup({
      --   dir = '~/path/to/your/obsidian/vault',
      -- })
    end,
  },

  -- ===================================================================
  --
  -- Disabled Plugins (from original config)
  --
  -- ===================================================================

  -- ================================================
  -- instant.nvim
  -- https://github.com/jbyuki/instant.nvim
  -- ================================================
  {
    'jbyuki/instant.nvim',
    enabled = false,
    config = function()
      -- vim.g.instant_username = "optimizasean"
    end,
  },

  -- ================================================
  -- markview.nvim
  -- https://github.com/OXY2DEV/markview.nvim
  -- ================================================
  {
    'OXY2DEV/markview.nvim',
    enabled = false, --
  },
}
