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
  - [Disabled Plugins](#disabled-plugins)
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

### Editing

Plugins that enhance the day-to-day text editing experience.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `vim-visual-multi` | [`mg979/vim-visual-multi`](https://github.com/mg979/vim-visual-multi) | Provides powerful multiple cursor support. |
| ✅ | `Comment.nvim` | [`numToStr/Comment.nvim`](https://github.com/numToStr/Comment.nvim) | Smart commenting plugin, provides `gc` and other motions. |
| ✅ | `silicon.nvim` | [`krivahtoo/silicon.nvim`](https://github.com/krivahtoo/silicon.nvim) | Generates beautiful code screenshots from within Neovim. |

### Language Specific

Plugins built for a specific programming language.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ✅ | `rustaceanvim` | [`mrcjkb/rustaceanvim`](https://github.com/mrcjkb/rustaceanvim) | Supercharge your Rust experience in Neovim. |
| ✅ | `typescript-tools.nvim` | [`pmizio/typescript-tools.nvim`](https://github.com/pmizio/typescript-tools.nvim) | Comprehensive TypeScript integration for Neovim. |

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

### Disabled Plugins

These plugins are part of the configuration but are currently disabled.

| | Plugin | Source | Description |
| --- | --- | --- | --- |
| ❌ | `crates.nvim` | [`saecki/crates.nvim`](https://github.com/saecki/crates.nvim) | Helps manage Rust dependencies in `Cargo.toml` files. |
| ❌ | `Hypersonic.nvim` | [`tomiis4/hypersonic.nvim`](https://github.com/tomiis4/hypersonic.nvim) | A UI animation engine for Neovim. |
| ❌ | `instant.nvim` | [`jbyuki/instant.nvim`](https://github.com/jbyuki/instant.nvim) | A plugin for collaborative editing. |
| ❌ | `mini.nvim` | [`nvim-mini/mini.nvim`](https://github.com/nvim-mini/mini.nvim) | A library of minimal, fast, and feature-rich Lua plugins. |
| ❌ | `mini.map` | [`nvim-mini/mini.nvim`](https://github.com/nvim-mini/mini.nvim) | A minimal and fast minimap for Neovim. |
| ❌ | `markview.nvim` | [`OXY2DEV/markview.nvim`](https://github.com/OXY2DEV/markview.nvim) | A markdown previewer plugin. |
| ❌ | `nvim-autopairs` | [`windwp/nvim-autopairs`](https://github.com/windwp/nvim-autopairs) | Autopairs for Neovim written in Lua. |
| ❌ | `roslyn.nvim` | [`seblj/roslyn.nvim`](https://github.com/seblj/roslyn.nvim) | C# Roslyn experience in Neovim. |

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

Key mappings provided or overridden by installed plugins.

#### `nvim-tree.lua`
| Key | Action |
| --- | --- |
| `<leader>nn` | Toggle NvimTree |
| `<leader>no` | Open NvimTree |
| `<leader>nc` | Close NvimTree |
| `<leader>nr` | Refresh NvimTree |

#### `telescope.nvim`
| Key | Action |
| --- | --- |
| `<leader>f` | Find Recent Files (MRU) |
| `<leader>tf` | Find Files |
| `<leader>tg` | Live Grep |
| `<leader>tb` | Find Buffers |
| `<leader>tt` | Find Help Tags |
| `gd` | [G]oto [D]efinition |
| `gr` | [G]oto [R]eferences |
| `gi` | [G]oto [I]mplementation |
| `<leader>ds` | [D]ocument [S]ymbols |
| `<leader>tc` | [T]heme Picker (Persistent) |

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
| `gD` | Go to Source Definition |
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
| `<Tab>` | Switch Mode |

#### `Comment.nvim` (Defaults)
| Key | Action |
| --- | --- |
| `gcc` | Toggle line comment |
| `gbc` | Toggle block comment |
| `gc` | Toggle comment (motion/visual) |
| `gb` | Toggle block comment (motion/visual) |

#### `marks.nvim` (Defaults)
| Key | Action |
| --- | --- |
| `m[a-z]` | Set mark |
| `'[a-z]` | Jump to mark |
| `dm[a-z]` | Delete mark |

#### `todo-comments.nvim` (Defaults)
| Key | Action |
| --- | --- |
| `]t` | Next todo comment |
| `[t` | Previous todo comment |