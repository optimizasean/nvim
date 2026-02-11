# README

This is my personal Neovim configuration, organized to be minimal, clean, and fast.

It uses `lazy.nvim` for plugin management and is structured entirely in Lua.

Most of my bindings are sensible defaults or the recommended mappings from the plugins. I've changed some (like window navigation) to avoid conflicts with `tmux`, which I highly recommend.

You may also like to look at my [tmux configuration](https://github.com/optimizasean/tmux).

## Index

- [Structure](#structure)
- [Installation](#installation)
- [Plugins](#plugins)
  - [Core & Library](#core--library)
  - [UI](#ui)
  - [File Navigation](#file-navigation)
  - [Git](#git)
  - [LSP](#lsp-language-server-protocol)
  - [Editing](#editing)
  - [Language Specific](#language-specific)
  - [AI](#ai)
  - [Note Taking](#note-taking)
- [Available Commands](#available-commands)
- [Hotkey Mappings](#hotkey-mappings)
  - [Default Mappings](#default-mappings)
  - [Plugin Mappings](#plugin-mappings)

## Structure

The configuration is broken into a modular structure for ease of reading and maintenance:

* `init.lua`: The main entry point. It bootstraps `lazy.nvim` and loads the core settings and plugins.
* `lua/core/options.lua`: Contains all global `vim.opt` settings.
* `lua/core/keymaps.lua`: Defines global keymappings that aren't tied to a specific plugin.
* `lua/plugins/`: This directory holds all plugin specifications. Each `.lua` file in this directory defines a single plugin (or a related group) for `lazy.nvim` to load.

## Installation

1.  Clone this repository.
2.  Run the `install.sh` script to:
    * Create the necessary `~/.config/nvim` directories.
    * Copy all the Lua configuration files to the correct locations.
    * Clean up any old `init.vim` or `vim-plug` files.
    * Launch Neovim and run `:Lazy sync` to automatically install and update all plugins.

This is meant to be a modern Neovim setup. If you are a Vim user or prefer a single-file `init.vim` setup, check out my old [vim config](https://github.com/optimizasean/.vim).

## Plugins

This setup is managed by `lazy.nvim` and organized into individual files within the `lua/plugins/` directory.

Below is a catalog of all installed plugins, sorted by category.

### Core & Library

These are foundational libraries and core editor enhancements.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `plenary.nvim` | [`nvim-lua/plenary.nvim`](https://github.com/nvim-lua/plenary.nvim) | A core Lua library providing common utilities (telescope, etc.) |
| ✅ | `nvim-treesitter` | [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) | Provides advanced syntax highlighting and code parsing. |
| ✅ | `rainbow-delimiters.nvim` | [`HiPhish/rainbow-delimiters.nvim`](https://gitlab.com/HiPhish/rainbow-delimiters.nvim) | Provides rainbow parentheses, loaded as a dependency for Treesitter. |
| ❌ | `mini.nvim` | [`nvim-mini/mini.nvim`](https://github.com/nvim-mini/mini.nvim) | A library of minimal, fast, and feature-rich Lua plugins. |

### UI

Plugins that modify the Neovim user interface, appearance, and status.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `nvim-tree.lua` | [`nvim-tree/nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua) | A file explorer sidebar. |
| ✅ | `nvim-web-devicons` | [`nvim-tree/nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons) | Provides file-type icons (used by nvim-tree and lualine). |
| ✅ | `lualine.nvim` | [`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim) | A feature-rich and configurable statusline. |
| ✅ | `todo-comments.nvim` | [`folke/todo-comments.nvim`](https://github.com/folke/todo-comments.nvim) | Highlights `TODO:`, `FIX:`, `NOTE:`, etc. in your code. |
| ✅ | `transparent.nvim` | [`xiyaowong/transparent.nvim`](https://github.com/xiyaowong/transparent.nvim) | Makes the Neovim editor background transparent. |
| ✅ | `nvim-notify` | [`rcarriga/nvim-notify`](https://github.com/rcarriga/nvim-notify) | A modern, animated notification system. |
| ✅ | `colorscheme-persist.nvim` | [`propet/colorscheme-persist.nvim`](https://github.com/propet/colorscheme-persist.nvim) | Persist and pick your favorite colorschemes. |
| ❌ | `Hypersonic.nvim` | [`tomiis4/hypersonic.nvim`](https://github.com/tomiis4/hypersonic.nvim) | A UI animation engine for Neovim. |
| ❌ | `mini.map` | [`nvim-mini/mini.nvim`](https://github.com/nvim-mini/mini.nvim) | A minimal and fast minimap for Neovim. |

### File Navigation

Plugins focused on finding and navigating files and buffers.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `telescope.nvim` | [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) | A highly extendable fuzzy finder for files, buffers, grep, etc. |
| ✅ | `marks.nvim` | [`chentoast/marks.nvim`](https://github.com/chentoast/marks.nvim) | A plugin to better manage and visualize Neovim's marks. |

### Git

Plugins for Git integration and version control.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `vim-fugitive` | [`tpope/vim-fugitive`](https://github.com/tpope/vim-fugitive) | The classic and powerful Git wrapper for Vim/Neovim. |
| ✅ | `diffview.nvim` | [`sindrets/diffview.nvim`](https://github.com/sindrets/diffview.nvim) | A powerful diff viewer for Git revisions. |

### LSP (Language Server Protocol)

Plugins related to the Language Server Protocol for code intelligence.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `mason.nvim` | [`williamboman/mason.nvim`](https://github.com/williamboman/mason.nvim) | Manages LSP servers, linters, and formatters automatically. |
| ✅ | `mason-lspconfig.nvim` | [`williamboman/mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim) | Bridges `mason.nvim` with `nvim-lspconfig`. |
| ✅ | `nvim-lspconfig` | [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig) | Provides the default configurations for Neovim's built-in LSP. |
| ✅ | `pyright` | [`microsoft/pyright`](https://github.com/microsoft/pyright) | Static type checker for Python. |
| ✅ | `ruff` | [`astral-sh/ruff-lsp`](https://github.com/astral-sh/ruff-lsp) | LSP implementation for Ruff. |
| ❌ | `roslyn.nvim` | [`seblj/roslyn.nvim`](https://github.com/seblj/roslyn.nvim) | C# Roslyn experience in Neovim. |

### Editing

Plugins that enhance the day-to-day text editing experience.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `vim-visual-multi` | [`mg979/vim-visual-multi`](https://github.com/mg979/vim-visual-multi) | Provides powerful multiple cursor support. |
| ✅ | `Comment.nvim` | [`numToStr/Comment.nvim`](https://github.com/numToStr/Comment.nvim) | Smart commenting plugin, provides `gc` and other motions. |
| ✅ | `silicon.nvim` | [`krivahtoo/silicon.nvim`](https://github.com/krivahtoo/silicon.nvim) | Generates beautiful code screenshots from within Neovim. |
| ❌ | `nvim-autopairs` | [`windwp/nvim-autopairs`](https://github.com/windwp/nvim-autopairs) | Autopairs for Neovim written in Lua. |
| ❌ | `instant.nvim` | [`jbyuki/instant.nvim`](https://github.com/jbyuki/instant.nvim) | A plugin for collaborative editing. |

### Language Specific

Plugins built for a specific programming language.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `rustaceanvim` | [`mrcjkb/rustaceanvim`](https://github.com/mrcjkb/rustaceanvim) | Supercharge your Rust experience in Neovim. |
| ✅ | `typescript-tools.nvim` | [`pmizio/typescript-tools.nvim`](https://github.com/pmizio/typescript-tools.nvim) | Comprehensive TypeScript integration for Neovim. |
| ❌ | `crates.nvim` | [`saecki/crates.nvim`](https://github.com/saecki/crates.nvim) | Helps manage Rust dependencies in `Cargo.toml` files. |

### AI

Plugins related to artificial intelligence and code companions.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `codecompanion.nvim` | [`olimorris/codecompanion.nvim`](https://github.com/olimorris/codecompanion.nvim) | AI code companion, configured to use Ollama. |

### Note Taking

Plugins for note-taking and knowledge management.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `obsidian.nvim` | [`epwalsh/obsidian.nvim`](https://github.com/epwalsh/obsidian.nvim) | Integrates Neovim with the Obsidian note-taking app. |
| ❌ | `markview.nvim` | [`OXY2DEV/markview.nvim`](https://github.com/OXY2DEV/markview.nvim) | A markdown previewer plugin. |

## Available Commands

Below is a comprehensive list of useful commands available from each tool (enabled and disabled).

| Plugin | Commands |
| --- | --- |
| **nvim-tree** | `:NvimTreeToggle`, `:NvimTreeOpen`, `:NvimTreeClose`, `:NvimTreeFocus`, `:NvimTreeFindFile`, `:NvimTreeCollapse` |
| **telescope** | `:Telescope`, `:Telescope find_files`, `:Telescope live_grep`, `:Telescope buffers`, `:Telescope help_tags`, `:Telescope oldfiles`, `:Telescope lsp_definitions`, `:Telescope lsp_references`, `:Telescope resume` |
| **todo-comments** | `:TodoQuickFix`, `:TodoLocList`, `:TodoTelescope`, `:TodoFzfLua` |
| **vim-fugitive** | `:Git` (or `:G`), `:Gstatus`, `:Gblame`, `:Gdiffsplit`, `:Gread`, `:Gwrite`, `:Ggrep`, `:GBrowse`, `:GDelete`, `:GRename`, `:GMove` |
| **diffview** | `:DiffviewOpen`, `:DiffviewClose`, `:DiffviewFileHistory`, `:DiffviewToggleFiles`, `:DiffviewFocusFiles`, `:DiffviewRefresh` |
| **mason** | `:Mason`, `:MasonUpdate`, `:MasonInstall`, `:MasonUninstall`, `:MasonUninstallAll`, `:MasonLog` |
| **rustaceanvim** | `:RustLsp runnables`, `:RustLsp debuggables`, `:RustLsp codeAction`, `:RustLsp openCargo`, `:RustLsp expandMacro`, `:RustLsp rebuildProcMacros`, `:RustLsp explainError`, `:RustLsp renderDiagnostic`, `:RustLsp openDocs`, `:RustLsp parentModule`, `:RustLsp joinLines`, `:RustLsp syntaxTree`, `:RustLsp flyCheck` |
| **typescript-tools** | `:TSToolsOrganizeImports`, `:TSToolsSortImports`, `:TSToolsAddMissingImports`, `:TSToolsRemoveUnusedImports`, `:TSToolsRemoveUnused`, `:TSToolsFixAll`, `:TSToolsGoToSourceDefinition`, `:TSToolsRenameFile`, `:TSToolsFileReferences` |
| **obsidian** | `:ObsidianNew`, `:ObsidianQuickSwitch`, `:ObsidianSearch`, `:ObsidianToday`, `:ObsidianTomorrow`, `:ObsidianYesterday`, `:ObsidianTemplate`, `:ObsidianRename`, `:ObsidianOpen`, `:ObsidianBacklinks`, `:ObsidianTags`, `:ObsidianDailies`, `:ObsidianLink`, `:ObsidianLinkNew`, `:ObsidianLinks`, `:ObsidianExtractNote`, `:ObsidianWorkspace`, `:ObsidianPasteImg`, `:ObsidianToggleCheckbox`, `:ObsidianNewFromTemplate`, `:ObsidianTOC` |
| **silicon** | `:Silicon` (Visual selection), `:Silicon! [file]` |
| **transparent** | `:TransparentEnable`, `:TransparentDisable`, `:TransparentToggle` |
| **nvim-notify** | `:Notifications`, `:NotificationsClear`, `:Telescope notify` |
| **codecompanion** | `:CodeCompanion`, `:CodeCompanionChat`, `:CodeCompanionActions`, `:CodeCompanionCmd`, `:CodeCompanionAdd` |
| **markview** | `:Markview`, `:Markview Toggle`, `:Markview Enable`, `:Markview Disable`, `:Markview splitToggle`, `:Markview splitOpen`, `:Markview splitClose`, `:Markview render`, `:Markview clear`, `:Markview HybridEnable`, `:Markview HybridDisable`, `:Markview traceExport` |
| **instant** | `:InstantStartServer`, `:InstantStopServer`, `:InstantStartSingle`, `:InstantJoinSingle`, `:InstantStop`, `:InstantStartSession`, `:InstantJoinSession`, `:InstantStatus`, `:InstantFollow`, `:InstantStopFollow`, `:InstantOpenAll`, `:InstantSaveAll`, `:InstantMark`, `:InstantMarkClear` |
| **hypersonic** | `:Hypersonic preview` |
| **roslyn** | `:Roslyn restart`, `:Roslyn start`, `:Roslyn stop`, `:Roslyn target` |
| **crates** | `:Crates toggle`, `:Crates reload`, `:Crates show_popup`, `:Crates show_versions_popup`, `:Crates show_features_popup`, `:Crates update_crate`, `:Crates update_all_crates`, `:Crates upgrade_crate`, `:Crates upgrade_all_crates`, `:Crates expand_plain_crate_to_inline_table`, `:Crates extract_crate_into_table` |
| **marks** | `:MarksToggleSigns`, `:MarksListBuf`, `:MarksListGlobal`, `:MarksListAll`, `:BookmarksList`, `:BookmarksListAll`, `:MarksQFListBuf`, `:MarksQFListGlobal`, `:MarksQFListAll`, `:BookmarksQFList`, `:BookmarksQFListAll` |

## Hotkey Mappings

The leader key (`<Leader>`) is set to `\`.

This section lists the primary hotkeys used in this configuration, divided into core Neovim mappings and plugin-specific mappings.

### Default Mappings

These mappings are defined in `lua/core/keymaps.lua` and provide essential editor navigation.

| Key | Mode | Action |
| --- | --- | --- |
| `<C-j>` | n, i, v | Move to the window below |
| `<C-k>` | n, i, v | Move to the window above |
| `<C-h>` | n, i, v | Move to the window on the left |
| `<C-l>` | n, i, v | Move to the window on the right |
| `<Leader><CR>` | n | Clear search highlight (`:noh`) |

### Plugin Mappings

Key mappings provided or overridden by installed plugins (including currently disabled ones).

#### `nvim-tree.lua`
| Key | Action |
| --- | --- |
| `<leader>nn` | Toggle NvimTree |
| `<leader>no` | Open NvimTree |
| `<leader>nc` | Close NvimTree |
| `<leader>nr` | Refresh NvimTree |
| `g?` | Show internal mappings (while tree is open) |
| `<CR>` or `o` | Open |
| `<C-]>` | CD |
| `<C-v>` | Open Vertical Split |
| `<C-x>` | Open Horizontal Split |
| `<C-t>` | Open Tab |
| `<Tab>` | Preview |
| `R` | Refresh |
| `a` | Create |
| `d` | Delete |
| `r` | Rename |
| `x` | Cut |
| `c` | Copy |
| `p` | Paste |
| `y` | Copy Name |
| `Y` | Copy Relative Path |
| `gy` | Copy Absolute Path |
| `I` | Toggle Git Ignore |
| `H` | Toggle Dotfiles |
| `q` | Close |

#### `telescope.nvim`
| Key | Action |
| --- | --- |
| `<leader>f` | Find Recent Files (MRU) |
| `<leader>tf` | Find Files |
| `<leader>tg` | Live Grep |
| `<leader>tb` | Find Buffers |
| `<leader>tt` | Find Help Tags |
| `gd` | [G]oto [D]efinition (Default: Native LSP `gd`) |
| `gr` | [G]oto [R]eferences (Default: Native LSP `gr`) |
| `gi` | [G]oto [I]mplementation (Default: Native LSP `gi`) |
| `<leader>ds` | [D]ocument [S]ymbols |
| `<leader>tc` | [T]heme Picker (Persistent) |
| `?` | Show mappings (while telescope is open) |
| `<CR>` | Confirm selection |
| `<C-x>` | Go to file selection as a split |
| `<C-v>` | Go to file selection as a vsplit |
| `<C-t>` | Go to a file in a new tab |
| `<Tab>` | Toggle selection and move to next |
| `<S-Tab>` | Toggle selection and move to prev |
| `<C-q>` | Send all to quickfix list |
| `<M-q>` | Send selected to quickfix list |

#### `nvim-lspconfig`
| Key | Action |
| --- | --- |
| `K` | LSP Hover information |
| `gd` | LSP Go to Definition (Handled by Telescope) |
| `gr` | LSP Go to References (Handled by Telescope) |
| `<leader>ca` | LSP Code Action |

#### `typescript-tools.nvim`
| Key | Action |
| --- | --- |
| `gD` | Go to Source Definition (Default: LSP Declaration) |
| `<leader>co` | Organize Imports |
| `<leader>rf` | Rename File |

#### `vim-visual-multi`
*Uses `\` as the leader key.*
| Key | Action |
| --- | --- |
| `<C-n>` | Find Under / Find Subword Under |
| `\A` | Select All |
| `\/` | Start Regex Search |
| `<C-Down>` | Add Cursor Down |
| `<C-Up>` | Add Cursor Up |
| `\'` | Add Cursor At Pos |
| `\a` | Visual Add |
| `\f` | Visual Find |
| `\c` | Visual Cursors |
| `<Tab>` | Switch Mode |
| `]` | Find Next |
| `[` | Find Prev |
| `}` | Goto Next |
| `{` | Goto Prev |
| `<C-f>` | Seek Next |
| `<C-b>` | Seek Prev |
| `q` | Skip Region |
| `Q` | Remove Region |
| `o` | Invert Direction |
| `m` | Find Operator |
| `S` | Surround |
| `R` | Replace Pattern |
| `\`` | Tools Menu |
| `\"` | Show Registers |
| `\c` | Case Setting |
| `\w` | Toggle Whole Word |
| `\t` | Transpose |
| `\a` | Align |
| `\d` | Duplicate |
| `\r` | Rewrite Last Search |
| `\m` | Merge Regions |
| `\s` | Split Regions |
| `\q` | Remove Last Region |
| `\s` | Visual Subtract |
| `\C` | Case Conversion Menu |
| `\S` | Search Menu |
| `\z` | Run Normal |
| `\Z` | Run Last Normal |
| `\v` | Run Visual |
| `\V` | Run Last Visual |
| `\x` | Run Ex |
| `\X` | Run Last Ex |
| `\@` | Run Macro |
| `\<` | Align Char |
| `\>` | Align Regex |
| `\n` | Numbers |
| `\N` | Numbers Append |
| `\0n` | Zero Numbers |
| `\0N` | Zero Numbers Append |
| `\-` | Shrink |
| `\+` | Enlarge |
| `\<BS>` | Toggle Block |
| `\<CR>` | Toggle Single Region |
| `\M` | Toggle Multiline |

#### `Comment.nvim`
| Key | Mode | Action |
| --- | --- | --- |
| `gcc` | n | Toggle line comment |
| `gbc` | n | Toggle block comment |
| `gc` | v | Toggle line comment (visual) |
| `gb` | v | Toggle block comment (visual) |
| `gco` | n | Insert comment below |
| `gcO` | n | Insert comment above |
| `gcA` | n | Insert comment at end of line |

#### `marks.nvim`
| Key | Action |
| --- | --- |
| `mx` | Set mark `x` |
| `dmx` | Delete mark `x` |
| `m,` | Set next available mark |
| `m]` | Move to next mark |
| `m[` | Move to previous mark |
| `m:` | Preview mark |
| `dm-` | Delete all marks on line |
| `dm<space>` | Delete all marks in buffer |
| `m[0-9]` | Add bookmark group 0-9 |
| `dm[0-9]` | Delete bookmarks in group 0-9 |

#### `todo-comments.nvim`
| Key | Action |
| --- | --- |
| `]t` | Next todo comment |
| `[t` | Previous todo comment |

#### `obsidian.nvim`
| Key | Action |
| --- | --- |
| `gf` | Follow link under cursor (Default: Native file `gf`) |
| `<leader>ch` | Toggle check-box |
| `<cr>` | Smart action (link/checkbox) |

#### `vim-fugitive` (Status Window)
| Key | Action |
| --- | --- |
| `g?` | Show help |
| `s` | Stage file/hunk |
| `u` | Unstage file/hunk |
| `-` | Toggle stage/unstage |
| `U` | Unstage everything |
| `=` | Toggle inline diff |
| `>` / `<` | Insert/Remove inline diff |
| `I` | Patch (interactive add) |
| `cc` | Commit |
| `ca` | Amend commit |
| `ce` | Extend commit |
| `cw` | Reword commit |
| `cvc` | Verbose commit |
| `cf` | Fixup commit |
| `cz` | Stash |
| `cZ` | Stash (keep index) |
| `X` | Discard change |

#### `diffview.nvim`
| Key | Action |
| --- | --- |
| `<tab>` | Next file |
| `<s-tab>` | Previous file |
| `<leader>e` | Focus file panel |
| `<leader>b` | Toggle file panel |
| `g?` | Help (while open) |
| `gf` | Open file in prev tabpage |
| `<C-w><C-f>` | Open file in new split |
| `<C-w>gf` | Open file in new tabpage |
| `[x` | Previous conflict |
| `]x` | Next conflict |
| `<leader>co` | Choose OURS |
| `<leader>ct` | Choose THEIRS |
| `<leader>cb` | Choose BASE |
| `<leader>ca` | Choose ALL |
| `dx` | Delete conflict region |

#### `mason.nvim` (UI)
| Key | Action |
| --- | --- |
| `g?` | Toggle help |
| `<CR>` | Toggle expand / view log |
| `i` | Install |
| `u` | Update |
| `c` | Check for update |
| `U` | Update all |
| `C` | Check all |
| `X` | Uninstall |
| `<C-c>` | Cancel |

#### `CodeCompanion`
| Key | Mode | Action |
| --- | --- | --- |
| `<C-s>` | i | Send prompt (in chat buffer) |
| `<CR>` | n | Send prompt (in chat buffer) |
| `ga` | n | Show actions (in chat buffer) |
| `gc` | n | Clear chat (in chat buffer) |
| `q` | n | Close chat (in chat buffer) |
| `s` | n | Save chat to file (in chat buffer) |

#### `nvim-autopairs`
| Key | Action |
| --- | --- |
| `<M-e>` | FastWrap |

#### `Hypersonic.nvim`
| Key | Action |
| --- | --- |
| `/` or `?` | Preview regex explanations during search |

#### `rustaceanvim` (Suggested Mappings)
| Key | Action |
| --- | --- |
| `K` | RustLsp hover actions |
| `<leader>a` | RustLsp codeAction |
| `<leader>e` | RustLsp explainError |
| `<leader>r` | RustLsp runnables |
| `<leader>d` | RustLsp debuggables |

#### `crates.nvim` (Default/Suggested)
| Key | Action |
| --- | --- |
| `<leader>ct` | Crates Toggle |
| `<leader>cr` | Crates Reload |
| `<leader>cv` | Crates Show Versions |
| `<leader>cf` | Crates Show Features |
| `<leader>cu` | Crates Update Crate |
| `<leader>ca` | Crates Update All |
| `<leader>cy` | Crates Upgrade Crate |
| `<leader>cx` | Crates Upgrade All |
