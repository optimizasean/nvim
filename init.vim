"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        optimizasean                         "
"                          init.vim                           "
"                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" System Settings                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable vim color syntax highlighting
syntax on

"Set special character for custom commands
let mapleader = "\\"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File, Font, and Backup settings                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup

" Turn off swapfile
set noswapfile

" Autosave before :next, :make, ...
" set autowrite

" Autoload on file changed
" set autoread

" Prefer unix over windows over OS 9 formats
set fileformats=unix,dos,mac

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sound Settings                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No annoying sound or flash on errors
" set noerrorbells
" set novisualbell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface Settings                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show when vim is waiting for a followup motion key (i.e. leader + ?, d + ?, so on)
set showcmd

" Show current vim mode always
set showmode

" Show row column % in bottom toolbar
set ruler

" Line number controls - absolute (number), relative (relativenumber), hybrid (number relativenumber)
set number

" Highlight current line
" set cursorline

" Show the statusline
set laststatus=2

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" Break line at end of screen
set textwidth=0

" Broken line prefix
" set showbreak=+++

" Disable highlight when <Leader><CR> is pressed - No Highlight
map <silent> <Leader><CR> :noh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding                                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable folding
set foldenable

" Fold level: only X nests down get folded(0 is fold all, 99 is fold never)
" set foldlevelstart=15

" Set fold trigger to indent based (can also use marker, manual, expr, syntax, diff, ...)
set foldmethod=manual

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Convert tabs to spaces
set expandtab

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

" Auto indent`
set autoindent

" Tab settings for specific files
" HTML - I prefer 4 for readability
" autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2

" JavaScript - I prefer 4 for readability
" autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2

" JSON - 2 is standard for compression but 4 is better for readability 
" autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Markdown - some linters want 2 although CommonMark spec disagrees - see ordered list v.s. unordered list - also many renderers may not like 2 (mdv, sometimes pandoc, ...)
" autocmd FileType markdown setlocal tabstop=2 softtabstop=2 shiftwidth=2 

" YAML - suggests 2 spaces but I personally prefer 4 and you generally use either 2 or 4
" autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 

" Python - suggests 2, as long as consistent it will work though but most linters want 2
" autocmd FileType python setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Ruby - suggests 2, as long as consistent it will work though but most linters want 2
" autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Window, Tab, and Buffer management                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Regular Expressions and Searching                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For regular expressions turn magic on
set magic

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Highlight found searches
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell Check                                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nospell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remapping Native Vim                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure backspace so it behaves
set backspace=eol,start,indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscellaneous                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nothing here at the moment

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                             "
"                                                             "
"                       PLUGINS                               "
"                                                             "
"                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"            Vim Website https://www.vim.org/                 "
"           VimAwesome https://vimawesome.com/                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start installing plugins using vim-plug
call plug#begin('~/.config/nvim/plugins')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE                                                         "
" Asynchronus Lint Engine                                     "
" https://github.com/w0rp/ale                                 "
" https://github.com/dense-analysis/ale                       "
" https://vimawesome.com/plugin/ale                           "
" Note: user is w0rp, organization is dense-analysis          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'dense-analysis/ale'

" Disabling highlighting
let g:ale_set_highlights = 0

" Enable ALE code completion - do not turn on if using ALE as completion source for other plugins
let g:ale_completion_enabled = 1

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" Set Linters for ALE
let g:ale_fixers = {}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-treesitter
" nvim-treesitter.vim
" https://github.com/nvim-treesitter/nvim-treesitter
" https://vimawesome.com/plugin/nvim-treesitter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-ts-rainbow
" rainbow.vim
" https://github.com/p00f/nvim-ts-rainbow
" https://vimawesome.com/plugin/nvim-ts-rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'p00f/nvim-ts-rainbow'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MRU                                                        "
" mru.vim                                                    "
" git clone https://github.com/vim-scripts/mru.vim           "
" https://vimawesome.com/plugin/mru-vim                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'yegappan/mru'

" let MRU_Max_Entries = 400
map <Leader>f :MRU<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim visual multi                                            "
" vim-visual-multi                                            "
" https://github.com/mg979/vim-visual-multi                   "
" https://vimawesome.com/plugin/vim-multiple-cursors          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'mg979/vim-visual-multi'

" \\ to start visual multi (<Leader><VM_leader>)
" Set specific leader for program
let g:VM_leader = '\'

" Disable default mappings
let g:multi_cursor_use_default_mapping=0

" Disable permanent mappings
let g:VM_default_mappings = 0

" Create the hash to fill with user preferences
let g:VM_maps = {}

" Default permanent mappings
let g:VM_maps['Find Under']                  = '<C-n>'
let g:VM_maps['Find Subword Under']          = '<C-n>'
let g:VM_maps["Select All"]                  = '\\A' 
let g:VM_maps["Start Regex Search"]          = '\\/'
let g:VM_maps["Add Cursor Down"]             = '<C-Down>'
let g:VM_maps["Add Cursor Up"]               = '<C-Up>'
let g:VM_maps["Add Cursor At Pos"]           = '\\\'
let g:VM_maps["Visual Regex"]                = '\\/'
let g:VM_maps["Visual All"]                  = '\\A' 
let g:VM_maps["Visual Add"]                  = '\\a'
let g:VM_maps["Visual Find"]                 = '\\f'
let g:VM_maps["Visual Cursors"]              = '\\c'

" Permanent mappings not enabled by default
" let g:VM_maps["Select Cursor Down"]          = '<M-C-Down>'
" let g:VM_maps["Select Cursor Up"]            = '<M-C-Up>'
" let g:VM_maps["Erase Regions"]               = '\\gr'
" let g:VM_maps["Mouse Cursor"]                = '<C-LeftMouse>'
" let g:VM_maps["Mouse Word"]                  = '<C-RightMouse>'
" let g:VM_maps["Mouse Column"]                = '<M-C-RightMouse>'

" VM buffer mappings
let g:VM_maps["Switch Mode"]                 = '<Tab>'
let g:VM_maps["Find Next"]                   = ']'
let g:VM_maps["Find Prev"]                   = '['
let g:VM_maps["Goto Next"]                   = '}'
let g:VM_maps["Goto Prev"]                   = '{'
let g:VM_maps["Seek Next"]                   = '<C-f>'
let g:VM_maps["Seek Prev"]                   = '<C-b>'
let g:VM_maps["Skip Region"]                 = 'q'
let g:VM_maps["Remove Region"]               = 'Q'
let g:VM_maps["Invert Direction"]            = 'o'
let g:VM_maps["Find Operator"]               = 'm'
let g:VM_maps["Surround"]                    = 'S'
let g:VM_maps["Replace Pattern"]             = 'R'
let g:VM_maps["Tools Menu"]                  = '\\`'
let g:VM_maps["Show Registers"]              = '\\"'
let g:VM_maps["Case Setting"]                = '\\c'
let g:VM_maps["Toggle Whole Word"]           = '\\w'
let g:VM_maps["Transpose"]                   = '\\t'
let g:VM_maps["Align"]                       = '\\a'
let g:VM_maps["Duplicate"]                   = '\\d'
let g:VM_maps["Rewrite Last Search"]         = '\\r'
let g:VM_maps["Merge Regions"]               = '\\m'
let g:VM_maps["Split Regions"]               = '\\s'
let g:VM_maps["Remove Last Region"]          = '\\q'
let g:VM_maps["Visual Subtract"]             = '\\s'
let g:VM_maps["Case Conversion Menu"]        = '\\C'
let g:VM_maps["Search Menu"]                 = '\\S'
let g:VM_maps["Run Normal"]                  = '\\z'
let g:VM_maps["Run Last Normal"]             = '\\Z'
let g:VM_maps["Run Visual"]                  = '\\v'
let g:VM_maps["Run Last Visual"]             = '\\V'
let g:VM_maps["Run Ex"]                      = '\\x'
let g:VM_maps["Run Last Ex"]                 = '\\X'
let g:VM_maps["Run Macro"]                   = '\\@'
let g:VM_maps["Align Char"]                  = '\\<'
let g:VM_maps["Align Regex"]                 = '\\>'
let g:VM_maps["Numbers"]                     = '\\n'
let g:VM_maps["Numbers Append"]              = '\\N'
let g:VM_maps["Zero Numbers"]                = '\\0n'
let g:VM_maps["Zero Numbers Append"]         = '\\0N'
let g:VM_maps["Shrink"]                      = '\\-'
let g:VM_maps["Enlarge"]                     = '\\+'
let g:VM_maps["Toggle Block"]                = '\\<BS>'
let g:VM_maps["Toggle Single Region"]        = '\\<CR>'
let g:VM_maps["Toggle Multiline"]            = '\\M'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive                                                    "
" FUGITIVE.VIM                                                "
" https://github.com/tpope/vim-fugitive                       "
" https://vimawesome.com/plugin/fugitive-vim                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'tpope/vim-fugitive'

" Fugitive .git/tags support removed in favor of `:set tags^=./.git/tags;`
:set tags^=./.git/tags;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-tree.lua                                               "
" https://github.com/nvim-tree/nvim-tree.lua                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons

" Open/Close/toggle/Refresh explorer
nnoremap <leader>nn <cmd>NvimTreeToggle<cr>
nnoremap <leader>no <cmd>NvimTreeOpen<cr>
nnoremap <leader>nc <cmd>NvimTreeClose<cr>
nnoremap <leader>nr <cmd>NvimTreeRefresh<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lualine                                                     "
" https://github.com/nvim-lualine/lualine.nvim                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'nvim-lualine/lualine.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" telescope.nvim                                              "
" https://github.com/nvim-telescope/telescope.nvim            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim' " Required dependency

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" diffview.nvim                                               "
" https://github.com/sindrets/diffview.nvim                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'sindrets/diffview.nvim'
Plug 'nvim-lua/plenary.nvim' " Required dependency

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Finish installing plugins with vim-plug                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Begin configuring plugins from vim-plug                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure nvim-treesitter                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  autopairs = {
    enable = true,
  },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    --disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  }
}
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure nvim-ts-rainbow                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Lualine                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
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
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure nvim-tree                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Telescope                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End configuring plugins from vim-plug                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                             "
"                                                             "
"                     END PLUGINS                             "
"                                                             "
"                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
