# README

This is my personal Neovim configuration, organized to be minimal, clean, and fast.

It uses `lazy.nvim` for plugin management and is structured entirely in Lua.

Most of my bindings are sensible defaults or the recommended mappings from the plugins. I've changed some (like window navigation) to avoid conflicts with `tmux`, which I highly recommend.

You may also like to look at my [tmux configuration](https://github.com/optimizasean/tmux).

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

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `plenary.nvim` | [`nvim-lua/plenary.nvim`](https://github.com/nvim-lua/plenary.nvim) | **Enabled** | A core Lua library providing common utilities (telescope, etc.) |
| `nvim-treesitter` | [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) | **Enabled** | Provides advanced syntax highlighting and code parsing. |
| `rainbow-delimiters.nvim` | [`HiPhish/rainbow-delimiters.nvim`](https://gitlab.com/HiPhish/rainbow-delimiters.nvim) | **Enabled** | Provides rainbow parentheses, loaded as a dependency for Treesitter. |

### UI

Plugins that modify the Neovim user interface, appearance, and status.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `nvim-tree.lua` | [`nvim-tree/nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua) | **Enabled** | A file explorer sidebar. |
| `nvim-web-devicons` | [`nvim-tree/nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons) | **Enabled** | Provides file-type icons (used by nvim-tree and lualine). |
| `lualine.nvim` | [`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim) | **Enabled** | A feature-rich and configurable statusline. |
| `todo-comments.nvim` | [`folke/todo-comments.nvim`](https://github.com/folke/todo-comments.nvim) | **Enabled** | Highlights `TODO:`, `FIX:`, `NOTE:`, etc. in your code. |
| `transparent.nvim` | [`xiyaowong/transparent.nvim`](https://github.com/xiyaowong/transparent.nvim) | **Enabled** | Makes the Neovim editor background transparent. |
| `nvim-notify` | [`rcarriga/nvim-notify`](https://github.com/rcarriga/nvim-notify) | **Enabled** | A modern, animated notification system. |
| `Hypersonic.nvim` | [`tomiis4/hypersonic.nvim`](https://github.com/tomiis4/hypersonic.nvim) | **Enabled** | A UI animation engine for Neovim. |

### File Navigation

Plugins focused on finding and navigating files and buffers.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `telescope.nvim` | [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) | **Enabled** | A highly extendable fuzzy finder for files, buffers, grep, etc. |
| `marks.nvim` | [`chentoast/marks.nvim`](https://github.com/chentoast/marks.nvim) | **Enabled** | A plugin to better manage and visualize Neovim's marks. |

### Git

Plugins for Git integration and version control.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `vim-fugitive` | [`tpope/vim-fugitive`](https://github.com/tpope/vim-fugitive) | **Enabled** | The classic and powerful Git wrapper for Vim/Neovim. |
| `diffview.nvim` | [`sindrets/diffview.nvim`](https://github.com/sindrets/diffview.nvim) | **Enabled** | A powerful diff viewer for Git revisions. |

### LSP (Language Server Protocol)

Plugins related to the Language Server Protocol for code intelligence.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `mason.nvim` | [`williamboman/mason.nvim`](https://github.com/williamboman/mason.nvim) | **Enabled** | Manages LSP servers, linters, and formatters automatically. |
| `mason-lspconfig.nvim` | [`williamboman/mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim) | **Enabled** | Bridges `mason.nvim` with `nvim-lspconfig`. |
| `nvim-lspconfig` | [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig) | **Enabled** | Provides the default configurations for Neovim's built-in LSP. |

### Editing

Plugins that enhance the day-to-day text editing experience.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `vim-visual-multi` | [`mg979/vim-visual-multi`](https://github.com/mg979/vim-visual-multi) | **Enabled** | Provides powerful multiple cursor support. |
| `Comment.nvim` | [`numToStr/Comment.nvim`](https://github.com/numToStr/Comment.nvim) | **Enabled** | Smart commenting plugin, provides `gc` and other motions. |
| `silicon.nvim` | [`krivahtoo/silicon.nvim`](https://github.com/krivahtoo/silicon.nvim) | **Enabled** | Generates beautiful code screenshots from within Neovim. |

### Language Specific

Plugins built for a specific programming language.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `crates.nvim` | [`saecki/crates.nvim`](https://github.com/saecki/crates.nvim) | **Enabled** | Helps manage Rust dependencies in `Cargo.toml` files. |

### AI

Plugins related to artificial intelligence and code companions.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `codecompanion.nvim` | [`olimorris/codecompanion.nvim`](https://github.com/olimorris/codecompanion.nvim) | **Enabled** | AI code companion, configured to use Ollama. |

### Note Taking

Plugins for note-taking and knowledge management.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `obsidian.nvim` | [`epwalsh/obsidian.nvim`](https://github.com/epwalsh/obsidian.nvim) | **Enabled** | Integrates Neovim with the Obsidian note-taking app. |

### Disabled Plugins

These plugins are part of the configuration but are currently disabled.

| Plugin | Source | Status | Description |
| --- | --- | --- | --- |
| `instant.nvim` | [`jbyuki/instant.nvim`](https://github.com/jbyuki/instant.nvim) | *Disabled* | A plugin for collaborative editing. |
| `mini.nvim` | [`nvim-mini/mini.nvim`](https://github.com/nvim-mini/mini.nvim) | *Disabled* | A library of minimal, fast, and feature-rich Lua plugins. |
| `markview.nvim` | [`OXY2DEV/markview.nvim`](https://github.com/OXY2DEV/markview.nvim) | *Disabled* | A markdown previewer plugin. |
