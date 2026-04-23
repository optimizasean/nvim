# README

This is my personal Neovim configuration, organized to be minimal, clean, and fast.

It uses `lazy.nvim` for plugin management and is structured entirely in Lua.

Most of my bindings are sensible defaults or the recommended mappings from the plugins.
I've changed some (like window navigation) to avoid conflicts with `tmux`, which I highly recommend.
I also use zellij and ghostty (similar bindings to kitty) so I made sure there should be no conflicts with any of the hotkeys.

You may also like to look at my [tmux configuration](https://github.com/optimizasean/tmux).

Recommended tools:

- Ghostty: terminal
- zellij: multiplexer (or tmux is nice too)
- nvim: (of course neovim lol)
- pnpm: manage node runtimes and global node tools
- uv: manage python runtimes and global python tools
- cargo: manage rust global tools (and recommended to install from rustup)
- zvm: manage zig

Also recommend Arch/yay with flatpak for other things (not required for this).
Terminal tools you will probably need fzf, rg, rust-analyzer, ruff, ...maybe some other tools? I forget.

## Index

- [Legend](#legend)
- [Structure](#structure)
- [Installation](#installation)
- [Plugins](#plugins)
    - [Core & Library](#core--library)
    - [UI](#ui)
    - [File Navigation](#file-navigation)
    - [Git](#git)
    - [LSP (Language Server Protocol)](#lsp-language-server-protocol)
    - [Editing](#editing)
    - [AI](#ai)
    - [Note Taking](#note-taking)
- [Available Commands](#available-commands)
- [Hotkey Mappings](#hotkey-mappings)
    - [Neovim Default Mappings](#neovim-default-mappings)
    - [Custom Core Mappings](#custom-core-mappings)
    - [Plugin Mappings](#plugin-mappings)
        - [nvim-tree.lua](#nvim-treelua)
        - [telescope.nvim](#telescopenvim)
        - [nvim-lspconfig](#nvim-lspconfig)
        - [typescript-tools.nvim](#typescript-toolsnvim)
        - [vim-visual-multi](#vim-visual-multi)
        - [Comment.nvim](#commentnvim)
        - [marks.nvim](#marksnvim)
        - [todo-comments.nvim](#todo-commentsnvim)
        - [obsidian.nvim](#obsidiannvim-disabled)
        - [vim-fugitive](#vim-fugitive-status-window)
        - [diffview.nvim](#diffviewnvim)
        - [mason.nvim](#masonnvim-ui)
        - [CodeCompanion](#codecompanion-chat-buffer)
        - [nvim-autopairs](#nvim-autopairs)
        - [Hypersonic.nvim](#hypersonicnvim)
        - [rustaceanvim](#rustaceanvim)
        - [crates.nvim](#cratesnvim)

## Legend

These icons indicate the source of each hotkey mapping:

| Icon | Type          | Description                                             |
|------|---------------|---------------------------------------------------------|
| ✅   | **Enabled**   | Marking plugins that are enabled.                       |
| ❌   | **Disabled**  | Marking plugins that are disabled.                      |
| 📦   | **Default**   | Hardcoded by the plugin itself.                         |
| 💡   | **Suggested** | Recommended by the plugin and implemented in my config. |
| 🛠️   | **Custom**    | My own unique mapping or a modification of a default.   |

## Structure

The configuration is broken into a modular structure for ease of reading and maintenance. Each component has a specific responsibility:

- `init.lua`: The main entry point. It bootstraps `lazy.nvim` and loads the core settings and plugins.
- `lua/core/options.lua`: Contains all global `vim.opt` settings.
- `lua/core/keymaps.lua`: Defines global keymappings that aren't tied to a specific plugin.
- `lua/plugins/`: This directory holds all plugin specifications. Each `.lua` file in this directory defines a single plugin (or a related group) for `lazy.nvim` to load.
- `lua/plugins/lsp/`: Dedicated directory for Language Server Protocol (LSP) configurations.
- `lua/plugins/disabled/`: Contains plugins that are currently disabled.

## Installation

Follow these steps to set up the environment on a new machine:

1. Clone this repository.
2. Run the `install.sh` script to:
    - Create the necessary `~/.config/nvim` directories.
    - Copy all the Lua configuration files to the correct locations.
    - Clean up any old `init.vim` or `vim-plug` files.
    - Launch Neovim and run `:Lazy sync` to automatically install and update all plugins.

## Plugins

This setup is managed by `lazy.nvim` and organized into individual files within the `lua/plugins/` directory. Below is a catalog of all installed plugins, sorted by category.

### Core & Library

These are foundational libraries and core editor enhancements.

| Plugin | Source                    | Description                                                                             |                                                                      |
|--------|---------------------------|-----------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| ✅     | `plenary.nvim`            | [`nvim-lua/plenary.nvim`](https://github.com/nvim-lua/plenary.nvim)                     | A core Lua library providing common utilities (telescope, etc.)      |
| ✅     | `nvim-treesitter`         | [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) | Provides advanced syntax highlighting and code parsing.              |
| ✅     | `rainbow-delimiters.nvim` | [`HiPhish/rainbow-delimiters.nvim`](https://gitlab.com/HiPhish/rainbow-delimiters.nvim) | Provides rainbow parentheses, loaded as a dependency for Treesitter. |
| ❌     | `mini.nvim`               | [`nvim-mini/mini.nvim`](https://github.com/nvim-mini/mini.nvim)                         | A library of minimal, fast, and feature-rich Lua plugins.            |

### UI

Plugins that modify the Neovim user interface, appearance, and status.

| Plugin | Source                     | Description                                                                             |                                                           |
|--------|----------------------------|-----------------------------------------------------------------------------------------|-----------------------------------------------------------|
| ✅     | `nvim-tree.lua`            | [`nvim-tree/nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua)                 | A file explorer sidebar.                                  |
| ✅     | `nvim-web-devicons`        | [`nvim-tree/nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons)         | Provides file-type icons (used by nvim-tree and lualine). |
| ✅     | `lualine.nvim`             | [`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)             | A feature-rich and configurable statusline.               |
| ✅     | `todo-comments.nvim`       | [`folke/todo-comments.nvim`](https://github.com/folke/todo-comments.nvim)               | Highlights `TODO:`, `FIX:`, `NOTE:`, etc. in your code.   |
| ✅     | `transparent.nvim`         | [`xiyaowong/transparent.nvim`](https://github.com/xiyaowong/transparent.nvim)           | Makes the Neovim editor background transparent.           |
| ✅     | `nvim-notify`              | [`rcarriga/nvim-notify`](https://github.com/rcarriga/nvim-notify)                       | A modern, animated notification system.                   |
| ✅     | `colorscheme-persist.nvim` | [`propet/colorscheme-persist.nvim`](https://github.com/propet/colorscheme-persist.nvim) | Persist and pick your favorite colorschemes.              |
| ❌     | `Hypersonic.nvim`          | [`tomiis4/hypersonic.nvim`](https://github.com/tomiis4/hypersonic.nvim)                 | A UI animation engine for Neovim.                         |
| ❌     | `mini.map`                 | [`nvim-mini/mini.nvim`](https://github.com/nvim-mini/mini.nvim)                         | A minimal and fast minimap for Neovim.                    |

### File Navigation

Plugins focused on finding and navigating files and buffers.

| Plugin | Source           | Description                                                                         |                                                                 |
|--------|------------------|-------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| ✅     | `telescope.nvim` | [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) | A highly extendable fuzzy finder for files, buffers, grep, etc. |
| ✅     | `marks.nvim`     | [`chentoast/marks.nvim`](https://github.com/chentoast/marks.nvim)                   | A plugin to better manage and visualize Neovim's marks.         |

### Git

Plugins for Git integration and version control.

| Plugin | Source          | Description                                                           |                                                      |
|--------|-----------------|-----------------------------------------------------------------------|------------------------------------------------------|
| ✅     | `vim-fugitive`  | [`tpope/vim-fugitive`](https://github.com/tpope/vim-fugitive)         | The classic and powerful Git wrapper for Vim/Neovim. |
| ✅     | `diffview.nvim` | [`sindrets/diffview.nvim`](https://github.com/sindrets/diffview.nvim) | A powerful diff viewer for Git revisions.            |

### LSP (Language Server Protocol)

These are the foundational plugins for Neovim's LSP ecosystem.

| Plugin | Source                 | Description                                                                                 |                                                                |
|--------|------------------------|---------------------------------------------------------------------------------------------|----------------------------------------------------------------|
| ✅     | `mason.nvim`           | [`williamboman/mason.nvim`](https://github.com/williamboman/mason.nvim)                     | Manages LSP servers, linters, and formatters automatically.    |
| ✅     | `mason-lspconfig.nvim` | [`williamboman/mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim) | Bridges `mason.nvim` with `nvim-lspconfig`.                    |
| ✅     | `nvim-lspconfig`       | [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)                         | Provides the default configurations for Neovim's built-in LSP. |

#### LSP Plugins

These are specialized plugins that provide enhanced language support or unique features.

| Plugin | Source                  | Description                                                                       |                                                       |
|--------|-------------------------|-----------------------------------------------------------------------------------|-------------------------------------------------------|
| ✅     | `typescript-tools.nvim` | [`pmizio/typescript-tools.nvim`](https://github.com/pmizio/typescript-tools.nvim) | Comprehensive TypeScript integration for Neovim.      |
| ✅     | `rustaceanvim`          | [`mrcjkb/rustaceanvim`](https://github.com/mrcjkb/rustaceanvim)                   | Supercharge your Rust experience in Neovim.           |
| ❌     | `crates.nvim`           | [`saecki/crates.nvim`](https://github.com/saecki/crates.nvim)                     | Helps manage Rust dependencies in `Cargo.toml` files. |

#### LSP Configurations

My LSP setup is highly modular. While Mason handles installation, the actual server configurations (including `pyright`, `ruff`, and others) are stored in individual files under `lua/plugins/lsp/`.

> [!IMPORTANT]
> **Modular Configuration:** Individual server configurations are stored in `lua/plugins/lsp/`.

The following tools are automatically installed via `mason-lspconfig.nvim` and configured via their respective files in `lua/plugins/lsp/`:

- **TypeScript / JavaScript:** `ts_ls` (configured by `typescript-tools.nvim`)
- **Python:** `pyright`, `ruff`
- **Rust:** `rust_analyzer` (typically handled by `rustaceanvim`)
- **GraphQL:** `graphql`
- **YAML / Kubernetes:** `yamlls`
- **Markdown:** `marksman`
- **Docker:** `dockerls`, `docker_compose_language_service`
- **TOML:** `taplo`
- **JSON (`package.json`):** `jsonls`
- **Lua:** `lua_ls`
- **Vue:** `vue_ls`
- **Tailwind:** `tailwindcss`
- **HTML / CSS:** `html`, `cssls`

> [!NOTE]
> **Interdependency:** Mason and `nvim-lspconfig` work together.
>
> - **Mason:** Manages the *installation* of the server binaries.
> - **LSP Files (`lua/plugins/lsp/`):** Manage the *configuration* and activation of those servers using Neovim's native LSP API.

### Editing

Plugins that enhance the day-to-day text editing experience.

| Plugin | Source             | Description                                                           |                                                           |
|--------|--------------------|-----------------------------------------------------------------------|-----------------------------------------------------------|
| ✅     | `vim-visual-multi` | [`mg979/vim-visual-multi`](https://github.com/mg979/vim-visual-multi) | Provides powerful multiple cursor support.                |
| ✅     | `Comment.nvim`     | [`numToStr/Comment.nvim`](https://github.com/numToStr/Comment.nvim)   | Smart commenting plugin, provides `gc` and other motions. |
| ✅     | `silicon.nvim`     | [`krivahtoo/silicon.nvim`](https://github.com/krivahtoo/silicon.nvim) | Generates beautiful code screenshots from within Neovim.  |
| ❌     | `nvim-autopairs`   | [`windwp/nvim-autopairs`](https://github.com/windwp/nvim-autopairs)   | Autopairs for Neovim written in Lua.                      |
| ❌     | `instant.nvim`     | [`jbyuki/instant.nvim`](https://github.com/jbyuki/instant.nvim)       | A plugin for collaborative editing.                       |

### AI

Plugins related to artificial intelligence and code companions.

| Plugin | Source               | Description                                                                       |                                              |
|--------|----------------------|-----------------------------------------------------------------------------------|----------------------------------------------|
| ✅     | `codecompanion.nvim` | [`olimorris/codecompanion.nvim`](https://github.com/olimorris/codecompanion.nvim) | AI code companion, configured to use Ollama. |

### Note Taking

Plugins for note-taking and knowledge management.

| Plugin | Source          | Description                                                         |                                                      |
|--------|-----------------|---------------------------------------------------------------------|------------------------------------------------------|
| ✅     | `obsidian.nvim` | [`epwalsh/obsidian.nvim`](https://github.com/epwalsh/obsidian.nvim) | Integrates Neovim with the Obsidian note-taking app. |
| ❌     | `markview.nvim` | [`OXY2DEV/markview.nvim`](https://github.com/OXY2DEV/markview.nvim) | A markdown previewer plugin.                         |

---

### LSP & Tool Management

By default, language servers, linters, and formatters are **installed and run through mason.nvim**. This approach is highly recommended due to its isolated environment, which prevents global pathing issues, "version hell," and ensures that Neovim plugins can reliably find the correct internal files (like `tsserver.js`).

> [!NOTE]
> **Interdependency:** Mason and `nvim-lspconfig` work together.
>
> - **Mason:** Manages the *installation* of the server binaries.
> - **LSP Files (`lua/plugins/lsp/`):** Manage the *configuration* and activation of those servers using Neovim's native LSP API.

However, you can still choose to install and configure custom tools globally using package managers. If you prefer that route, you will need to modify the configurations (e.g., `lua/plugins/lsp/typescript-tools.lua` or `lua/plugins/mason-lspconfig.lua`) to explicitly resolve those global binaries from your `$PATH` instead of falling back to Mason.

### Global Installation Alternatives

If you opt out of Mason for specific tools, you can install them globally via:

- [**uv**](https://github.com/astral-sh/uv): `uv tool install pyright ruff`
- [**cargo** / **rustup**](https://rustup.rs/): `rustup component add rust-analyzer`
- [**pnpm**](https://pnpm.io/): `pnpm add -g typescript typescript-language-server`

### Managed by Mason (Default)

The following tools are automatically installed and managed by Mason in this configuration via `mason-lspconfig.nvim`. Their individual configurations can be found in `lua/plugins/lsp/`:

- **TypeScript / JavaScript:** `ts_ls` (configured by `typescript-tools.nvim`)
- **Python:** `pyright`, `ruff`
- **Rust:** `rust_analyzer` (typically handled by `rustaceanvim`)
- **GraphQL:** `graphql`
- **YAML / Kubernetes:** `yamlls`
- **Markdown:** `marksman`
- **Docker:** `dockerls`, `docker_compose_language_service`
- **TOML:** `taplo`
- **JSON (`package.json`):** `jsonls`
- **Lua:** `lua_ls`
- **Vue:** `vue_ls`
- **Tailwind:** `tailwindcss`
- **HTML / CSS:** `html`, `cssls`

### Using Mason for Extra Tools

If you need to work in a language not listed above (e.g., Go, Zig, C#, or Terraform), you can use `mason.nvim` to install the server easily without polluting your global system tools.

1. Open Mason: `:Mason`
2. Find a tool: Press `/` to search.
3. Install: Press `i` on the tool.
4. Neovim will automatically attempt to use it if `lspconfig` is configured for that language.

---

## Available Commands

This section provides a quick reference for the most important `:Commands` for each tool. These commands allow you to manually trigger plugin features.

| Plugin               | Commands                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **nvim-tree**        | `:NvimTreeToggle`, `:NvimTreeOpen`, `:NvimTreeClose`, `:NvimTreeFocus`, `:NvimTreeFindFile`, `:NvimTreeCollapse`                                                                                                                                                                                                                                                                                                                            |
| **telescope**        | `:Telescope`, `:Telescope find_files`, `:Telescope live_grep`, `:Telescope buffers`, `:Telescope help_tags`, `:Telescope oldfiles`, `:Telescope lsp_definitions`, `:Telescope lsp_references`, `:Telescope resume`, `:Telescope colorscheme`                                                                                                                                                                                                |
| **todo-comments**    | `:TodoQuickFix`, `:TodoLocList`, `:TodoTelescope`, `:TodoFzfLua`                                                                                                                                                                                                                                                                                                                                                                            |
| **vim-fugitive**     | `:Git`, `:Gstatus`, `:Gblame`, `:Gdiffsplit`, `:Gread`, `:Gwrite`, `:Ggrep`, `:GBrowse`, `:GDelete`, `:GRename`, `:GMove`                                                                                                                                                                                                                                                                                                                   |
| **diffview**         | `:DiffviewOpen`, `:DiffviewClose`, `:DiffviewFileHistory`, `:DiffviewToggleFiles`, `:DiffviewFocusFiles`, `:DiffviewRefresh`                                                                                                                                                                                                                                                                                                                |
| **mason**            | `:Mason`, `:MasonUpdate`, `:MasonInstall`, `:MasonUninstall`, `:MasonUninstallAll`, `:MasonLog`                                                                                                                                                                                                                                                                                                                                             |
| **rustaceanvim**     | `:RustLsp runnables`, `:RustLsp debuggables`, `:RustLsp testables`, `:RustLsp codeAction`, `:RustLsp hover actions`, `:RustLsp explainError`, `:RustLsp renderDiagnostic`, `:RustLsp openCargo`, `:RustLsp openDocs`, `:RustLsp parentModule`, `:RustLsp joinLines`, `:RustLsp syntaxTree`, `:RustLsp flyCheck`, `:RustAnalyzer config`                                                                                                     |
| **typescript-tools** | `:TSToolsOrganizeImports`, `:TSToolsSortImports`, `:TSToolsAddMissingImports`, `:TSToolsRemoveUnusedImports`, `:TSToolsRemoveUnused`, `:TSToolsFixAll`, `:TSToolsGoToSourceDefinition`, `:TSToolsRenameFile`, `:TSToolsFileReferences`                                                                                                                                                                                                      |
| **obsidian**         | `:ObsidianNew`, `:ObsidianQuickSwitch`, `:ObsidianSearch`, `:ObsidianToday`, `:ObsidianTomorrow`, `:ObsidianYesterday`, `:ObsidianTemplate`, `:ObsidianRename`, `:ObsidianOpen`, `:ObsidianBacklinks`, `:ObsidianTags`, `:ObsidianDailies`, `:ObsidianLink`, `:ObsidianLinkNew`, `:ObsidianLinks`, `:ObsidianExtractNote`, `:ObsidianWorkspace`, `:ObsidianPasteImg`, `:ObsidianToggleCheckbox`, `:ObsidianNewFromTemplate`, `:ObsidianTOC` |
| **silicon**          | `:Silicon`, `:Silicon! [file]`                                                                                                                                                                                                                                                                                                                                                                                                              |
| **transparent**      | `:TransparentEnable`, `:TransparentDisable`, `:TransparentToggle`                                                                                                                                                                                                                                                                                                                                                                           |
| **nvim-notify**      | `:Notifications`, `:NotificationsClear`, `:Telescope notify`                                                                                                                                                                                                                                                                                                                                                                                |
| **codecompanion**    | `:CodeCompanion`, `:CodeCompanionChat`, `:CodeCompanionActions`, `:CodeCompanionCmd`, `:CodeCompanionAdd`                                                                                                                                                                                                                                                                                                                                   |
| **markview**         | `:Markview`, `:Markview Toggle`, `:Markview Enable`, `:Markview Disable`, `:Markview splitToggle`, `:Markview render`, `:Markview clear`, `:Markview HybridEnable`, `:Markview traceExport`                                                                                                                                                                                                                                                 |
| **instant**          | `:InstantStartServer`, `:InstantStopServer`, `:InstantStartSingle`, `:InstantJoinSingle`, `:InstantStop`, `:InstantStartSession`, `:InstantJoinSession`, `:InstantStatus`, `:InstantFollow`, `:InstantStopFollow`, `:InstantOpenAll`, `:InstantSaveAll`, `:InstantMark`, `:InstantMarkClear`                                                                                                                                                |
| **hypersonic**       | `:Hypersonic preview`                                                                                                                                                                                                                                                                                                                                                                                                                       |
| **roslyn**           | `:Roslyn restart`, `:Roslyn start`, `:Roslyn stop`, `:Roslyn target`                                                                                                                                                                                                                                                                                                                                                                        |
| **crates**           | `:Crates toggle`, `:Crates reload`, `:Crates show_popup`, `:Crates show_versions_popup`, `:Crates show_features_popup`, `:Crates show_dependencies_popup`, `:Crates update_crate`, `:Crates update_all_crates`, `:Crates upgrade_crate`, `:Crates upgrade_all_crates`, `:Crates open_homepage`, `:Crates open_repository`, `:Crates open_documentation`                                                                                     |
| **marks**            | `:MarksToggleSigns`, `:MarksListBuf`, `:MarksListGlobal`, `:MarksListAll`, `:BookmarksList`, `:BookmarksListAll`, `:MarksQFListBuf`, `:MarksQFListGlobal`, `:MarksQFListAll`, `:BookmarksQFList`, `:BookmarksQFListAll`                                                                                                                                                                                                                     |

---

## Hotkey Mappings

The leader key (`<Leader>`) is set to `\`. This section lists the primary hotkeys used in this configuration, divided into core Neovim mappings and plugin-specific mappings.

### Neovim Default Mappings

These are the standard, out-of-the-box Neovim keybindings (Normal Mode unless specified).

#### Motion

| Key                 | Action                                         |
|---------------------|------------------------------------------------|
| `h` `j` `k` `l`     | Move left, down, up, right                     |
| `w` `b`             | Move to start of next / previous word          |
| `e` `ge`            | Move to end of next / previous word            |
| `W` `B` `E` `gE`    | Same as above but using WORD (spaces only)     |
| `0` `$`             | Move to beginning / end of line                |
| `^` `_`             | Move to first non-blank character of line      |
| `gg` `G`            | Move to first / last line of file              |
| `(` `)`             | Move to start of previous / next sentence      |
| `{` `}`             | Move to start of previous / next paragraph     |
| `H` `M` `L`         | Move to Top, Middle, Bottom line of the window |
| `%`                 | Jump to matching bracket                       |
| `f{char}` `F{char}` | Find character forward / backward              |
| `t{char}` `T{char}` | Move "till" character forward / backward       |
| `;` `,`             | Repeat last `f` / `t` (forward / backward)     |

#### Editing (Default)

| Key         | Action                                     |
|-------------|--------------------------------------------|
| `i` `I`     | Insert at cursor / first non-blank of line |
| `a`         | Append after cursor                        |
| `A`         | Append at end of line                      |
| `o` `O`     | Open new line below / above                |
| `r`         | Replace single character                   |
| `R`         | Enter Replace mode                         |
| `x` `X`     | Delete character under / before cursor     |
| `d{motion}` | Delete (cut) based on motion               |
| `dd`        | Delete (cut) current line                  |
| `D`         | Delete (cut) to end of line                |
| `c{motion}` | Change (cut + insert) based on motion      |
| `cc`        | Change (cut + insert) current line         |
| `C`         | Change (cut + insert) to end of line       |
| `s` `S`     | Substitute character / line                |
| `y{motion}` | Yank (copy) based on motion                |
| `yy` `Y`    | Yank current line                          |
| `p` `P`     | Paste after / before cursor                |
| `u` `<C-r>` | Undo / Redo                                |
| `.`         | Repeat last change                         |
| `J`         | Join current line with next                |
| `~`         | Toggle case of character                   |

#### Visual Mode

| Key     | Action                               |
|---------|--------------------------------------|
| `v` `V` | Start Visual / Visual Line mode      |
| `<C-v>` | Start Visual Block mode              |
| `o`     | Move to other end of selection       |
| `u` `U` | Make selection lowercase / uppercase |
| `>` `<` | Indent / Outdent selection           |

#### Search & Replace

| Key             | Action                                            |
|-----------------|---------------------------------------------------|
| `/` `?`         | Search forward / backward                         |
| `n` `N`         | Repeat search forward / backward                  |
| `*` `#`         | Search for word under cursor (forward / backward) |
| `:%s/old/new/g` | Substitute `old` with `new` globally              |

#### Windows & Tabs

| Key                  | Action                                 |
|----------------------|----------------------------------------|
| `<C-w>s` `<C-w>v`    | Split window horizontally / vertically |
| `<C-w>w`             | Cycle between windows                  |
| `<C-w>h` `j` `k` `l` | Move to window in direction            |
| `<C-w>q` `<C-w>c`    | Quit / Close current window            |
| `<C-w>o`             | Close all other windows                |
| `<C-w>r`             | Rotate windows                         |
| `<C-w>=`             | Make windows equal size                |
| `:tabnew`            | Open new tab                           |
| `gt` `gT`            | Move to next / previous tab            |

#### LSP & Diagnostics (Neovim Defaults)

| Key       | Action                     |
|-----------|----------------------------|
| `K`       | Hover information          |
| `gd`      | Go to definition           |
| `gD`      | Go to declaration          |
| `gi`      | Go to implementation       |
| `grr`     | List references            |
| `grn`     | Rename symbol              |
| `gra`     | Code actions               |
| `[d` `]d` | Previous / Next diagnostic |
| `<C-w>d`  | Open diagnostic float      |

### Custom Core Mappings

Essential editor navigation and window management mappings defined in `lua/core/keymaps.lua`.

| Type | Key            | Mode    | Action                          |
|------|----------------|---------|---------------------------------|
| 🛠️   | `<C-j>`        | n, i, v | Move to the window below        |
| 🛠️   | `<C-k>`        | n, i, v | Move to the window above        |
| 🛠️   | `<C-h>`        | n, i, v | Move to the window on the left  |
| 🛠️   | `<C-l>`        | n, i, v | Move to the window on the right |
| 🛠️   | `<Leader><CR>` | n       | Clear search highlight (`:noh`) |

### Plugin Mappings

Hotkey mappings provided or overridden by installed plugins. These enhance specific tool workflows.

#### `nvim-tree.lua`

| Type | Key              | Action                     |
|------|------------------|----------------------------|
| 🛠️   | `<leader>nn`     | Toggle NvimTree            |
| 🛠️   | `<leader>no`     | Open NvimTree              |
| 🛠️   | `<leader>nc`     | Close NvimTree             |
| 🛠️   | `<leader>nr`     | Refresh NvimTree           |
| 📦   | `g?`             | Toggle Help                |
| 📦   | `<CR>`           | Open                       |
| 📦   | `o`              | Open                       |
| 📦   | `<Tab>`          | Open Preview               |
| 📦   | `<C-v>`          | Open: Vertical Split       |
| 📦   | `<C-x>`          | Open: Horizontal Split     |
| 📦   | `<C-t>`          | Open: New Tab              |
| 📦   | `<C-e>`          | Open: In Place             |
| 📦   | `O`              | Open: No Window Picker     |
| 📦   | `a`              | Create File Or Directory   |
| 📦   | `d`              | Delete                     |
| 📦   | `D`              | Trash                      |
| 📦   | `r`              | Rename                     |
| 📦   | `e`              | Rename: Basename           |
| 📦   | `u`              | Rename: Full Path          |
| 📦   | `<C-r>`          | Rename: Omit Filename      |
| 📦   | `x`              | Cut                        |
| 📦   | `c`              | Copy                       |
| 📦   | `p`              | Paste                      |
| 📦   | `y`              | Copy Name                  |
| 📦   | `Y`              | Copy Relative Path         |
| 📦   | `gy`             | Copy Absolute Path         |
| 📦   | `ge`             | Copy Basename              |
| 📦   | `R`              | Refresh                    |
| 📦   | `-`              | Up (Root to Parent)        |
| 📦   | `<C-]>`          | CD (Root to Node)          |
| 📦   | `<BS>`           | Close Directory            |
| 📦   | `P`              | Parent Directory           |
| 📦   | `K`              | First Sibling              |
| 📦   | `J`              | Last Sibling               |
| 📦   | `>`              | Next Sibling               |
| 📦   | `<`              | Previous Sibling           |
| 📦   | `]c`             | Next Git Item              |
| 📦   | `[c`             | Previous Git Item          |
| 📦   | `]e`             | Next Diagnostic            |
| 📦   | `[e`             | Previous Diagnostic        |
| 📦   | `f`              | Live Filter: Start         |
| 📦   | `F`              | Live Filter: Clear         |
| 📦   | `H`              | Toggle Filter: Dotfiles    |
| 📦   | `I`              | Toggle Filter: Git Ignore  |
| 📦   | `U`              | Toggle Filter: Hidden      |
| 📦   | `C`              | Toggle Filter: Git Clean   |
| 📦   | `B`              | Toggle Filter: No Buffer   |
| 📦   | `M`              | Toggle Filter: No Bookmark |
| 📦   | `L`              | Toggle Group Empty         |
| 📦   | `E`              | Expand All                 |
| 📦   | `W`              | Collapse All               |
| 📦   | `S`              | Search                     |
| 📦   | `s`              | Run System                 |
| 📦   | `.`              | Run Command                |
| 📦   | `m`              | Toggle Bookmark            |
| 📦   | `bmv`            | Move Bookmarked            |
| 📦   | `bt`             | Trash Bookmarked           |
| 📦   | `bd`             | Delete Bookmarked          |
| 📦   | `q`              | Close                      |
| 📦   | `<C-k>`          | Info                       |
| 📦   | `<2-LeftMouse>`  | Open                       |
| 📦   | `<2-RightMouse>` | CD                         |

#### `telescope.nvim`

| Type | Key          | Action                                             |
|------|--------------|----------------------------------------------------|
| 🛠️   | `<leader>f`  | Find Recent Files (MRU)                            |
| 🛠️   | `<leader>tf` | Find Files                                         |
| 🛠️   | `<leader>tg` | Live Grep                                          |
| 🛠️   | `<leader>tb` | Find Buffers                                       |
| 🛠️   | `<leader>tt` | Find Help Tags                                     |
| 🛠️   | `gd`         | [G]oto [D]efinition (Default: Native LSP `gd`)     |
| 🛠️   | `gr`         | [G]oto [R]eferences (Default: Native LSP `gr`)     |
| 🛠️   | `gi`         | [G]oto [I]mplementation (Default: Native LSP `gi`) |
| 🛠️   | `<leader>ds` | [D]ocument [S]ymbols                               |
| 🛠️   | `<leader>tc` | [T]heme Picker (Persistent)                        |
| 📦   | `?`          | Show mappings (while telescope is open)            |
| 📦   | `<CR>`       | Confirm selection                                  |
| 📦   | `<C-x>`      | Go to file selection as a split                    |
| 📦   | `<C-v>`      | Go to file selection as a vsplit                   |
| 📦   | `<C-t>`      | Go to a file in a new tab                          |
| 📦   | `<Tab>`      | Toggle selection and move to next                  |
| 📦   | `<S-Tab>`    | Toggle selection and move to prev                  |
| 📦   | `<C-q>`      | Send all to quickfix list                          |
| 📦   | `<M-q>`      | Send selected to quickfix list                     |

#### `nvim-lspconfig`

| Type | Key          | Action                                      |
|------|--------------|---------------------------------------------|
| 🛠️   | `K`          | LSP Hover information                       |
| 🛠️   | `gd`         | LSP Go to Definition (Handled by Telescope) |
| 🛠️   | `gr`         | LSP Go to References (Handled by Telescope) |
| 🛠️   | `<leader>ca` | LSP Code Action                             |

#### `typescript-tools.nvim`

| Type | Key          | Action                                             |
|------|--------------|----------------------------------------------------|
| 🛠️   | `gD`         | Go to Source Definition (Default: LSP Declaration) |
| 🛠️   | `<leader>co` | Organize Imports                                   |
| 🛠️   | `<leader>rf` | Rename File                                        |

#### `vim-visual-multi`

| Type | Key        | Action                                                |
|------|------------|-------------------------------------------------------|
| 🛠️   | `<C-n>`    | Find Under / Find Subword Under                       |
| 🛠️   | `\A`       | Select All / Visual All (Default: `<C-n>A`)           |
| 🛠️   | `\/`       | Start Regex Search / Visual Regex (Default: `<C-n>/`) |
| 🛠️   | `<C-Down>` | Add Cursor Down                                       |
| 🛠️   | `<C-Up>`   | Add Cursor Up                                         |
| 🛠️   | `\'`       | Add Cursor At Pos                                     |
| 🛠️   | `\a`       | Visual Add / Align                                    |
| 🛠️   | `\f`       | Visual Find                                           |
| 🛠️   | `\c`       | Visual Cursors / Case Setting                         |
| 🛠️   | `<Tab>`    | Switch Mode                                           |
| 🛠️   | `]`        | Find Next                                             |
| 🛠️   | `[`        | Find Prev                                             |
| 🛠️   | `}`        | Goto Next                                             |
| 🛠️   | `{`        | Goto Prev                                             |
| 🛠️   | `<C-f>`    | Seek Next                                             |
| 🛠️   | `<C-b>`    | Seek Prev                                             |
| 🛠️   | `q`        | Skip Region                                           |
| 🛠️   | `Q`        | Remove Region                                         |
| 🛠️   | `o`        | Invert Direction                                      |
| 🛠️   | `m`        | Find Operator                                         |
| 🛠️   | `S`        | Surround                                              |
| 🛠️   | `R`        | Replace Pattern                                       |
| 🛠️   | `\``       | Tools Menu                                            |
| 🛠️   | `\"`       | Show Registers                                        |
| 🛠️   | `\w`       | Toggle Whole Word                                     |
| 🛠️   | `\t`       | Transpose                                             |
| 🛠️   | `\d`       | Duplicate                                             |
| 🛠️   | `\r`       | Rewrite Last Search                                   |
| 🛠️   | `\m`       | Merge Regions                                         |
| 🛠️   | `\s`       | Split Regions / Visual Subtract                       |
| 🛠️   | `\q`       | Remove Last Region                                    |
| 🛠️   | `\C`       | Case Conversion Menu                                  |
| 🛠️   | `\S`       | Search Menu                                           |
| 🛠️   | `\z`       | Run Normal                                            |
| 🛠️   | `\Z`       | Run Last Normal                                       |
| 🛠️   | `\v`       | Run Visual                                            |
| 🛠️   | `\V`       | Run Last Visual                                       |
| 🛠️   | `\x`       | Run Ex                                                |
| 🛠️   | `\X`       | Run Last Ex                                           |
| 🛠️   | `\@`       | Run Macro                                             |
| 🛠️   | `\<`       | Align Char                                            |
| 🛠️   | `\>`       | Align Regex                                           |
| 🛠️   | `\n`       | Numbers                                               |
| 🛠️   | `\N`       | Numbers Append                                        |
| 🛠️   | `\0n`      | Zero Numbers                                          |
| 🛠️   | `\0N`      | Zero Numbers Append                                   |
| 🛠️   | `\-`       | Shrink                                                |
| 🛠️   | `\+`       | Enlarge                                               |
| 🛠️   | `\<BS>`    | Toggle Block                                          |
| 🛠️   | `\<CR>`    | Toggle Single Region                                  |
| 🛠️   | `\M`       | Toggle Multiline                                      |

#### `Comment.nvim`

| Type | Key          | Mode | Action                           |
|------|--------------|------|----------------------------------|
| 📦   | `gcc`        | n    | Toggle line comment              |
| 📦   | `gbc`        | n    | Toggle block comment             |
| 📦   | `gc`         | v    | Toggle line comment (visual)     |
| 📦   | `gb`         | v    | Toggle block comment (visual)    |
| 📦   | `gco`        | n    | Insert comment below             |
| 📦   | `gcO`        | n    | Insert comment above             |
| 📦   | `gcA`        | n    | Insert comment at end of line    |
| 📦   | `gc{motion}` | n    | Toggle line comment with motion  |
| 📦   | `gb{motion}` | n    | Toggle block comment with motion |

#### `marks.nvim`

| Type | Key         | Action                                     |
|------|-------------|--------------------------------------------|
| 📦   | `mx`        | Set mark `x`                               |
| 📦   | `m,`        | Set next available mark                    |
| 📦   | `m;`        | Toggle next available mark at current line |
| 📦   | `dmx`       | Delete mark `x`                            |
| 📦   | `dm-`       | Delete all marks on line                   |
| 📦   | `dm<space>` | Delete all marks in buffer                 |
| 📦   | `m]`        | Move to next mark                          |
| 📦   | `m[`        | Move to previous mark                      |
| 📦   | `m:`        | Preview mark                               |
| 📦   | `m[0-9]`    | Add bookmark group 0-9                     |
| 📦   | `dm[0-9]`   | Delete bookmarks in group 0-9              |
| 📦   | `m}`        | Move to next bookmark of same type         |
| 📦   | `m{`        | Move to previous bookmark of same type     |
| 📦   | `dm=`       | Delete bookmark under cursor               |

#### `todo-comments.nvim`

| Type | Key  | Action                |
|------|------|-----------------------|
| 📦   | `]t` | Next todo comment     |
| 📦   | `[t` | Previous todo comment |

#### `obsidian.nvim` (Disabled)

| Type | Key          | Action                                               |
|------|--------------|------------------------------------------------------|
| 📦   | `gf`         | Follow link under cursor (Default: Native file `gf`) |
| 🛠️   | `<leader>ch` | Toggle check-box                                     |
| 🛠️   | `<cr>`       | Smart action (link/checkbox)                         |

#### `vim-fugitive` (Status Window)

| Type | Key       | Action                    |
|------|-----------|---------------------------|
| 📦   | `g?`      | Show help                 |
| 📦   | `s`       | Stage file/hunk           |
| 📦   | `u`       | Unstage file/hunk         |
| 📦   | `-`       | Toggle stage/unstage      |
| 📦   | `U`       | Unstage everything        |
| 📦   | `=`       | Toggle inline diff        |
| 📦   | `>` / `<` | Insert/Remove inline diff |
| 📦   | `I`       | Patch (interactive add)   |
| 📦   | `cc`      | Commit                    |
| 📦   | `ca`      | Amend commit              |
| 📦   | `ce`      | Extend commit             |
| 📦   | `cw`      | Reword commit             |
| 📦   | `cvc`     | Verbose commit            |
| 📦   | `cf`      | Fixup commit              |
| 📦   | `cz`      | Stash                     |
| 📦   | `cZ`      | Stash (keep index)        |
| 📦   | `X`       | Discard change            |

#### `diffview.nvim`

| Type | Key          | Action                    |
|------|--------------|---------------------------|
| 📦   | `<tab>`      | Next file                 |
| 📦   | `<s-tab>`    | Previous file             |
| 🛠️   | `<leader>e`  | Focus file panel          |
| 🛠️   | `<leader>b`  | Toggle file panel         |
| 📦   | `g?`         | Help (while open)         |
| 📦   | `gf`         | Open file in prev tabpage |
| 📦   | `<C-w><C-f>` | Open file in new split    |
| 📦   | `<C-w>gf`    | Open file in new tabpage  |
| 📦   | `[x`         | Previous conflict         |
| 📦   | `]x`         | Next conflict             |
| 📦   | `<leader>co` | Choose OURS               |
| 📦   | `<leader>ct` | Choose THEIRS             |
| 📦   | `<leader>cb` | Choose BASE               |
| 📦   | `<leader>ca` | Choose ALL                |
| 📦   | `dx`         | Delete conflict region    |

#### `mason.nvim` (UI)

| Type | Key     | Action                   |
|------|---------|--------------------------|
| 📦   | `g?`    | Toggle help              |
| 📦   | `<CR>`  | Toggle expand / view log |
| 📦   | `i`     | Install                  |
| 📦   | `u`     | Update                   |
| 📦   | `c`     | Check for update         |
| 📦   | `U`     | Update all               |
| 📦   | `C`     | Check all                |
| 📦   | `X`     | Uninstall                |
| 📦   | `<C-f>` | Apply language filter    |
| 📦   | `<C-c>` | Cancel installation      |

#### `CodeCompanion` (Chat Buffer)

| Type | Key     | Mode | Action            |
|------|---------|------|-------------------|
| 📦   | `<C-s>` | i    | Send prompt       |
| 📦   | `<CR>`  | n    | Send prompt       |
| 📦   | `ga`    | n    | Show actions      |
| 📦   | `gc`    | n    | Clear chat        |
| 📦   | `gs`    | n    | Stop generation   |
| 📦   | `q`     | n    | Close chat        |
| 📦   | `s`     | n    | Save chat to file |
| 📦   | `]`     | n    | Next Header       |
| 📦   | `[`     | n    | Previous Header   |
| 📦   | `gf`    | n    | Fold              |

#### `nvim-autopairs`

| Type | Key     | Action   |
|------|---------|----------|
| 📦   | `<M-e>` | FastWrap |

#### `Hypersonic.nvim`

| Type | Key        | Action                                   |
|------|------------|------------------------------------------|
| 📦   | `/` or `?` | Preview regex explanations during search |

#### `rustaceanvim`

| Type | Key         | Action                |
|------|-------------|-----------------------|
| 💡   | `K`         | RustLsp hover actions |
| 💡   | `<leader>a` | RustLsp codeAction    |
| 💡   | `<leader>e` | RustLsp explainError  |
| 💡   | `<leader>r` | RustLsp runnables     |
| 💡   | `<leader>d` | RustLsp debuggables   |

#### `crates.nvim`

| Type | Key           | Action               |
|------|---------------|----------------------|
| 💡   | `<leader>cct` | Crates Toggle        |
| 💡   | `<leader>ccr` | Crates Reload        |
| 💡   | `<leader>ccv` | Crates Show Versions |
| 💡   | `<leader>ccf` | Crates Show Features |
| 💡   | `<leader>ccu` | Crates Update Crate  |
| 💡   | `<leader>cca` | Crates Update All    |
| 💡   | `<leader>ccy` | Crates Upgrade Crate |
| 💡   | `<leader>ccx` | Crates Upgrade All   |
