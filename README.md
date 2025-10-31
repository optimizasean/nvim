# README

I organized the config file to use as much minimalism as possible.

Most of my bindings are sensible or the recommended from the plugins.
I had to change some since people (mostly me) use tmux.

Config is broken into certain groups with nice decorators for ease of reading.
I configure the default vim stuff first, and then plugin installation
and "vim style" configuration.
Finally completing with lua configurations of the plugins.

This is meant to be as neovim as possible.
This is why there is a single file unlike the old vim git method of plugins
with pathogen and plenty directories.
If you are a vim user check out my [vim config](https://github.com/optimizasean/.vim).

You may also like to look at my [tmux configuration](https://github.com/optimizasean/tmux).

Check out `vim-plug-final` tag for the last "pure vim" old school way.
I just updated to lazy.nvim and lua to do it the modern faster way with better startup times (not like my old one was slow but gotta count those ms lol).

## Neovim Configuration

This is my personal Neovim configuration, organized to be minimal, clean, and fast.

It uses `lazy.nvim` for plugin management and is structured entirely in Lua.

Most of my bindings are sensible defaults or the recommended mappings from the plugins.
I've changed some (like window navigation) to avoid conflicts with `tmux`, which I highly recommend.

You may also like to look at my [tmux configuration](https://github.com/optimizasean/tmux).

## Structure

The configuration is broken into a modular structure for ease of reading and maintenance:

* `init.lua`: The main entry point. It bootstraps `lazy.nvim` and loads the rest of the config.

* `lua/core/options.lua`: Contains all my global `vim.opt` settings.

* `lua/core/keymaps.lua`: Defines global keymappings that aren't tied to a specific plugin.

* `lua/plugins/init.lua`: This is the main plugin specification file for `lazy.nvim`. All plugins, their configurations, and their lazy-loading rules are defined here.

## Installation

1. Clone this repository.

2. Run the `install.sh` script to:

   * Create the necessary `~/.config/nvim` directories.

   * Copy all the Lua configuration files to the correct locations.

   * Clean up any old `init.vim` or `vim-plug` files.

   * Launch Neovim and run `:Lazy sync` to automatically install and update all plugins.

This is meant to be a modern Neovim setup. If you are a Vim user or prefer a single-file `init.vim` setup, check out my old [vim config](https://github.com/optimizasean/.vim).
