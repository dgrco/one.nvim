# one.nvim

A Neovim theme inspired by OneDark.

<img width="1535" height="1057" alt="image" src="https://github.com/user-attachments/assets/b8778e43-e235-4510-b568-c9a66dd748d1" />

## Installation

### lazy.nvim
```lua
{
  "dgrco/one.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("one")
  end,
}
```

## Supported plugins & features

One provides explicit highlight support for:

- **Neovim core**
  - UI elements (line numbers, splits, floating windows)
  - Search, visual selection, matchparen
  - Syntax highlighting (legacy + Tree-sitter)

- **Tree-sitter**
  - Variables, functions, types, constants, operators

- **LSP / Diagnostics**
  - Errors, warnings, and hints via built-in diagnostic groups

- **Completion**
  - `nvim-cmp` (completion menu and documentation windows)

- **Keybinding helpers**
  - `which-key.nvim`

- **Version control**
  - `gitsigns.nvim`
 
- **Status Lines**
  - `mini.statusline`

- **Extras**
  - Matching Alacritty theme
  - Matching Foot theme

### Tested with

- Neovim ≥ 0.11
- `nvim-treesitter`
- `nvim-cmp`
- `which-key.nvim`
- `gitsigns.nvim`

## Acknowledgements  
- Wallpaper [https://www.reddit.com/r/wallpaper/comments/qlr375/3840x2160_astronaut/]
