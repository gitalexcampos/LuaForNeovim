# MyNvim

<div style="display: flex; justify-content: space-around;">
    <img src="imgs/nvim-screen1.png" alt="Descrição da imagem 1" width="400"/>
    <img src="imgs/nvim-screen2.png" alt="Descrição da imagem 2" width="400"/>
</div>

## What is MyNvim?

MyNvim is a comprehensive configuration setup for Neovim, designed to provide an optimized and perfect editing experience.

## How to Install

### Linux

Before installing, run the following commands to remove any old Neovim configurations:

```bash
rm -rf ~/.local/share/nvim/*
rm -rf ~/.local/state/nvim/*
rm -rf ~/.config/nvim/*
```

Next, install the new configuration:

```bash
cd ~/.config/nvim
git clone https://github.com/gitalexcampos/ultimate-nvim.git ./
```

## Test Your New Neovim Setup

To test your new configuration, simply run:

```bash
nvim
```

## Features

- Comprehensive plugin management
- Enhanced performance settings
- Custom keybindings
- Improved user interface

# Keybindings Overview

## Number Management

| Shortcut       | Functionality      |
| -------------- | ------------------ |
| `(Espace) + k` | Increment a number |
| `(Espace) + j` | Decrement a number |
| `(Espace) + +` | Increment a number |
| `(Espace) + -` | Decrement a number |

## Tab Management

| Shortcut          | Functionality                  |
| ----------------- | ------------------------------ |
| `(Shift) + n`     | Create new tab                 |
| `(Shift) + Right` | Move current tab to right      |
| `(Shift) + Left`  | Move current tab to left       |
| `(Shift) + l`     | Go to next tab                 |
| `(Shift) + h`     | Go to previous tab             |
| `(Shift) + x`     | Close current tab              |
| `(Shift) + c`     | Open current buffer in new tab |

## Window Management

| Shortcut         | Functionality               |
| ---------------- | --------------------------- |
| `(Ctrl) + =`     | Make splits equal size      |
| `(Ctrl) + x`     | Close current split         |
| `\|`             | Make a Vsplit               |
| `_`              | Make a Hsplit               |
| `(Ctrl) + k`     | Move cursor to up window    |
| `(Ctrl) + j`     | Move cursor to down windows |
| `(Ctrl) + l`     | Move cursor to left window  |
| `(Ctrl) + h`     | Move cursor to right window |
| `(Ctrl) + Up`    | Resize window to up         |
| `(Ctrl) + Down`  | Resize windows to down      |
| `(Ctrl) + Left`  | Resize window to left       |
| `(Ctrl) + Right` | Resize window to right      |

## File Management

| Shortcut        | Functionality                   |
| --------------- | ------------------------------- |
| `(Espace) + ff` | Fuzzy find files in cwd         |
| `(Espace) + fr` | Fuzzy find recent files         |
| `(Espace) + fs` | Find string in cwd              |
| `(Espace) + fc` | Find string under cursor in cwd |

## File Explorer Management Tree

| Shortcut        | Functionality                        |
| --------------- | ------------------------------------ |
| `(Espace) + ee` | Toggle file explorer                 |
| `(Espace) + ef` | Toggle file explorer on current file |
| `(Espace) + ec` | Collapse file explorer               |
| `(Espace) + er` | Refresh file explorer                |

## Session Management

| Shortcut        | Functionality                          |
| --------------- | -------------------------------------- |
| `(Espace) + wr` | Restore session for cwd                |
| `(Espace) + ws` | Save session for auto session root dir |

## Git Management

| Shortcut       | Functionality |
| -------------- | ------------- |
| `(Espace) + g` | Open LazyGit  |

## Miscellaneous

| Shortcut        | Functionality             |
| --------------- | ------------------------- |
| `(Espace) + sm` | Maximize/minimize a split |

# Plugins installed

| Plugin                                                                          | Description                                                                              |
| ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| [alpha-nvim](https://github.com/goolord/alpha-nvim)                             | A dashboard for Neovim that provides a better startup experience.                        |
| [auto-session](https://github.com/rmagatti/auto-session)                        | Automatically saves and restores your sessions, making workflow seamless.                |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)                      | Automatically closes pairs of characters like brackets and quotes.                       |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                   | A buffer line for Neovim that provides an intuitive way to navigate buffers.             |
| [catppuccin](https://github.com/catppuccin/nvim)                                | A cozy and aesthetic color scheme for Neovim.                                            |
| [dressing.nvim](https://github.com/stevearc/dressing.nvim)                      | Enhance Neovim's UI for select and input dialogs.                                        |
| [conform.nvim](https://github.com/stevearc/conform.nvim)                        | A framework for automatic formatting of code in Neovim.                                  |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Adds indentation guides to Neovim to improve code readability.                           |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                        | A Lua library for Neovim that provides useful functions and utilities.                   |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)                        | Integrates LazyGit with Neovim for an enhanced Git experience.                           |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint)                          | Provides linting support for various file types in Neovim.                               |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                    | A fast and easy-to-configure status line plugin for Neovim.                              |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                 | A completion plugin for Neovim that provides auto-completion features.                   |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)                     | A file explorer for Neovim that allows easy navigation and management of files.          |
| [nvim-surround](https://github.com/kylechui/nvim-surround)                      | Easily add, remove, or change surrounding characters in Neovim.                          |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)              | A fuzzy finder for Neovim that helps you search and filter files and content.            |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)           | Provides better syntax highlighting and code navigation through tree-sitter integration. |
| [vim-maximizer](https://github.com/szw/vim-maximizer)                           | Easily maximize and restore windows in Neovim for better workflow.                       |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                       | Displays available keybindings in a popup to help discover shortcuts.                    |

# Acknowledgments

This project is based on the setup guide by [Josean](https://www.josean.com/posts/how-to-setup-neovim-2024). Thank you for the valuable insights!

Feel free to explore and customize it further to suit your needs!
