"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        optimizasean                         "
"                          init.vim                           "
"                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" System Settings                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set special character for custom commands
let mapleader = "\\"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File, Font, and Backup settings                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup

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
" Set colorscheme
colorscheme vim

" Set background light/dark
" set background=dark

" NOTE: I use transparent.nvim for this
" Make background transparent
" highlight Normal ctermbg=NONE guibg=NONE

" Enable vim color syntax highlighting
syntax enable

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

" Set column line for good coding guide
" set cc=80

" Show the statusline
set laststatus=2

" Show matching brackets when text indicator is over them
set showmatch

" Break line at end of screen
set textwidth=0

" Broken line prefix
" set showbreak=+++

" Make TTY faster
set ttyfast

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

" Treat 4 spaces as single backspace (like tab backspace)
set softtabstop=4

" Convert tabs to spaces
set expandtab

" Shift lines on shift command
set shiftwidth=4

" Auto indent based on previous line
set autoindent

" Give bash like tab completions
" set wildmode=longest,list

" Auto indent based on file type and plugins
" filetype plugin indent on

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

" Highlight found searches
set hlsearch

" Makes search act like search in modern browsers
set incsearch

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
" Neovim                                                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable vi compatibility
set nocompatible



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
" plenary                                                     "
" plenary.nvim                                                "
" https://github.com/nvim-lua/plenary.nvim                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin - this is here because it is dependent for many
Plug 'nvim-lua/plenary.nvim'
" Dependencies
" diffview.nvim (not anymore?)
" X

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-treesitter                                             "
" nvim-treesitter.vim                                         "
" https://github.com/nvim-treesitter/nvim-treesitter          "
" https://vimawesome.com/plugin/nvim-treesitter               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rainbow-delimeters.nvim                                     "
" https://gitlab.com/HiPhish/rainbow-delimiters.nvim          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'HiPhish/rainbow-delimiters.nvim', {'do': ':TSUpdate'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mason-lspconfig.nvim                                        "
" https://github.com/williamboman/mason.nvim                  "
" https://github.com/williamboman/mason-lspconfig.nvim        "
" https://github.com/neovim/nvim-lspconfig                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugins
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" marks.nvim                                                  "
" https://github.com/chentoast/marks.nvim                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
Plug 'chentoast/marks.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" crates.nvim                                                 "
" https://github.com/saecki/crates.nvim                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
Plug 'saecki/crates.nvim', { 'tag': 'stable' }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" silicon.nvim                                                "
" https://github.com/krivahtoo/silicon.nvim                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
" Plug 'krivahtoo/silicon.nvim', { 'do': './install.sh' }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" todo-comments.nvim                                          "
" https://github.com/folke/todo-comments.nvim                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
Plug 'folke/todo-comments.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comment.nvim                                                "
" https://github.com/numToStr/Comment.nvim                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
Plug 'numToStr/Comment.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" transparent.nvim                                            "
" https://github.com/xiyaowong/transparent.nvim               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
Plug 'xiyaowong/transparent.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hypersonic.nvim                                             "
" https://github.com/tomiis4/hypersonic.nvim                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
" Plug 'tomiis4/Hypersonic.nvim'
" AFTER PLUGEND: require('hypersonic').setup()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-notify                                                 "
" https://github.com/rcarriga/nvim-notify                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
" Plug 'rcarriga/nvim-notify'
" look up config

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" instant.nvim                                                "
" https://github.com/jbyuki/instant.nvim                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
" Plug 'jbyuki/instant.nvim'
" let g:instant_username = "optimizasean"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" obsidian.nvim                                               "
" https://github.com/epwalsh/obsidian.nvim                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
" Plug 'epwalsh/obsidian.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markview.nvim                                               "
" https://github.com/OXY2DEV/markview.nvim                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install plugin
" Plug 'OXY2DEV/markview.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CodeCompanion                                               "
" https://github.com/olimorris/codecompanion.nvim             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'olimorris/codecompanion.nvim'

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
require('nvim-treesitter.configs').setup({
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "phpdoc", "hoon", "ipkg", "norg" }, -- List of parsers to ignore installing
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  autopairs = {
    enable = false,
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
})
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Lualine                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('lualine').setup({
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
})
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure nvim-tree                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('nvim-tree').setup()
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Telescope                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('telescope').setup()
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure rainbow-delimeters.nvim                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('rainbow-delimiters.setup').setup()
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure mason-lspconfig.nvim                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('mason').setup()
require('mason-lspconfig').setup()

--require('lspconfig').lua_ls.setup {}
--require('lspconfig').rust_analyzer.setup {}
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure marks.nvim                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('marks').setup()
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure crates.nvim                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('crates').setup({
    completion = {
        cmp = {
            enabled = true
        },
    },
})
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure silicon.nvim                                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lua << EOF
" require('silicon').setup({
"   font = 'FiraCode Nerd Font=16',
"   theme = 'Monokai Extended',
" })
" EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure todo-comments.nvim                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('todo-comments').setup({
  signs = true, -- show icons in the signs column
  sign_priority = 8, -- sign priority
  -- keywords recognized as todo comments
  keywords = {
    FIX = {
      icon = " ", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "BROKE", "BROKEN", "BUG" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO", "HINT" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  },
  gui_style = {
    fg = "NONE", -- The gui style to use for the fg highlight group.
    bg = "BOLD", -- The gui style to use for the bg highlight group.
  },
  merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  -- highlighting of the line containing the todo comment
  -- * before: highlights before the keyword (typically comment characters)
  -- * keyword: highlights of the keyword
  -- * after: highlights after the keyword (todo text)
  highlight = {
    multiline = true, -- enable multine todo comments
    multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
    multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
    before = "", -- "fg" or "bg" or empty
    keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
    after = "fg", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = {}, -- list of file types to exclude highlighting
  },
  -- list of named colors where we try to extract the guifg from the
  -- list of highlight groups or use the hex color if hl not found as a fallback
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
    test = { "Identifier", "#FF00FF" }
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
})
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Comment.nvim                                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require('Comment').setup()
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure CodeCompanion                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require('codecompanion').setup({
    strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
    },
})
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
