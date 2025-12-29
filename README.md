# floraverse.nvim

A dark, vibrant Neovim colorscheme inspired by natural flora and night gardens.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "solom4/floraverse.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  "solom4/floraverse.nvim",
  config = function()
    require("floraverse").setup()
    vim.cmd([[colorscheme floraverse]])
  end
}
```

## Usage

```lua
-- Setup with default options
require("floraverse").setup()
vim.cmd([[colorscheme floraverse]])
```

## Configuration

```lua
require("floraverse").setup({
  style = "main", -- The default style
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal`
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark", -- style for sidebars, "dark", "transparent" or "normal"
    floats = "dark", -- style for floating windows
  },

  plugins = {
    all = false, -- enable all plugins (default is true if lazy.nvim not detected)
    auto = true, -- auto-detect installed plugins using lazy.nvim
    -- or specify individual plugins
    -- telescope = true,
    -- gitsigns = true,
    -- ["neo-tree"] = true,
    -- ["nvim-cmp"] = true,
  },

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights floraverse.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
```

## Supported Plugins

Floraverse has native support for the following plugins:

- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git decorations
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [blink.cmp](https://github.com/Saghen/blink.cmp) - Completion engine
- [trouble.nvim](https://github.com/folke/trouble.nvim) - Diagnostics list
- [snacks.nvim](https://github.com/folke/snacks.nvim) - Collection of QoL plugins
- [hop.nvim](https://github.com/phaazon/hop.nvim) - Jump to any location
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Statusline (via theme)

Plugin support is automatically enabled when using lazy.nvim, or you can manually control which plugins to enable in the configuration.

## Features

- ✅ Complete UI highlighting for Neovim
- ✅ Full Treesitter syntax highlighting support
- ✅ LSP integration (diagnostics, references)
- ✅ Native plugin support (Telescope, GitSigns, Neo-tree, nvim-cmp)
- ✅ Configurable styles for comments, keywords, functions, and variables
- ✅ Terminal color support
- ✅ Transparent background option
- ✅ Customizable via `on_colors` and `on_highlights` callbacks

## License

MIT
