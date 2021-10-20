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
"                       PLUGINS                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"            Vim Website https://www.vim.org/                 "
"           VimAwesome https://vimawesome.com/                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start installing plugins using vim-plug
call plug#begin('~/.config/nvim/plugins')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The Nerd Tree                                               "
" https://github.com/scrooloose/nerdtree                      "
" https://vimawesome.com/plugin/nerdtree-red                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'scrooloose/nerdtree'

let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

map <Leader>nn :NERDTreeToggle<CR>
map <Leader>nb :NERDTreeFromBookmark<Space>
map <Leader>nf :NERDTreeFind<CR>

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
" YankStack                                                   "
" https://github.com/maxbrunsfeld/vim-yankstack               "
" https://vimawesome.com/plugin/yankstack                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
" Plug 'maxbrunsfeld/vim-yankstack'

" let g:yankstack_yank_keys = ['y', 'd']
" nmap <C-p> <Plug>yankstack_substitute_older_paste
" nmap <C-n> <Plug>yankstack_substitute_newer_paste

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
" Ale                                                         "
" Asynchronus Lint Engine                                     "
" https://github.com/w0rp/ale                                 "
" https://vimawesome.com/plugin/ale                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Is this guy called dense-analysis now?
Plug 'w0rp/ale'

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
" Airline                                                     "
" vim-airline-superman                                        "
" https://github.com/vim-airline/vim-airline                  "
" https://vimawesome.com/plugin/vim-airline-superman          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'vim-airline/vim-airline'

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
" vim-surround                                                "
" surround.vim                                                "
" https://github.com/tpope/vim-surround                       "
" https://vimawesome.com/plugin/surround-vim                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'tpope/vim-surround'

" set to 0 if you want to enable it later via :RainbowToggle or 1 to be always active
let g:rainbow_active = 0

map <Leader><Ctrl-r> :RainbowToggle

" Configure for custom colors and behaviors - defaults below
" let g:rainbow_conf = {
" \    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
" \    'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
" \    'guis': [''],
" \    'cterms': [''],
" \    'operators': '_,_',
" \    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
" \    'separately': {
" \        '*': {},
" \        'markdown': {
" \            'parentheses_options': 'containedin=markdownCode contained', "enable rainbow for code blocks only
" \        },
" \        'lisp': {
" \            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'], "lisp needs more colors for parentheses :)
" \        },
" \        'haskell': {
" \            'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'], "the haskell lang pragmas should be excluded
" \        },
" \        'vim': {
" \            'parentheses_options': 'containedin=vimFuncBody', "enable rainbow inside vim function body
" \        },
" \        'perl': {
" \            'syn_name_prefix': 'perlBlockFoldRainbow', "solve the [perl indent-depending-on-syntax problem](https://github.com/luochen1990/rainbow/issues/20)
" \        },
" \        'stylus': {
" \            'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], "[vim css color](https://github.com/ap/vim-css-color) compatibility
" \        },
" \        'css': 0, "disable this plugin for css files
" \    }
" \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-floaterm                                                "
" floaterm.vim                                                "
" https://github.com/voldikss/vim-floaterm                    "
" https://vimawesome.com/plugin/vim-floaterm                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
" Plug 'voldikss/vim-floaterm'
" let g:floaterm_keymap_new = '<Leader>tn'
" let g:floaterm_keymap_kill = '<Leader>tk'
" let g:floaterm_keymap_toggle = '<Leader>tt'
" let g:floaterm_keymap_show = '<Leader>ts'
" let g:floaterm_keymap_hide = '<Leader>th'
" let g:floaterm_keymap_next = '<Leader>t]'
" let g:floaterm_keymap_prev = '<Leader>t['
" let g:floaterm_keymap_first = '<Leader>t<'
" let g:floaterm_keymap_last = '<Leader>t>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" commentary.vim                                              "
" commentary.vim                                              "
" https://github.com/tpope/vim-commentary                     "
" https://vimawesome.com/plugin/commentary-vim                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
" Plug 'tpope/vim-commentary'

" To add more file types (example is apache which uses # and has a space after it:
" autocmd FileType apache set commentstring=#\ %s

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf                                                         "
" fzf.vim                                                     "
" https://github.com/junegunn/fzf                             "
" https://vimawesome.com/plugin/fzf                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Note: Pure fzf wrapper of terminal utility, no commands
" Install Plugin
Plug 'junegunn/fzf'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf:heart:vim                                               "
" fzf.vim                                                     "
" https://github.com/junegunn/fzf.vim                         "
" https://vimawesome.com/plugin/fzf-vim                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugin
Plug 'junegunn/fzf.vim'

" Wrapper of fzf adding command assistance
" Requires fzf 0.23.0 or higher to be installed: https://github.com/junegunn/fzf
" Note: Ag requires the silver searcher (ag): https://github.com/ggreer/the_silver_searcher
" Note: Rg requires ripgrep (rg): https://github.com/BurntSushi/ripgrep
" Note: Tags and Helptags require Perl
" Note: For syntax highlighted preview, install bat: https://github.com/sharkdp/bat

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Finish installing plugins with vim-plug                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

