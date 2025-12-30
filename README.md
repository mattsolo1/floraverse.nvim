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

```vim
" There are multiple styles available:
colorscheme floraverse        -- The default dark theme
colorscheme floraverse-midnight -- A darker variant
colorscheme floraverse-twilight -- A softer dark variant
colorscheme floraverse-day      -- A light theme
colorscheme floraverse-dawn     -- A softer light theme
```

You can also set the background to automatically switch between styles.
```lua
vim.o.background = "light" -- floraverse-day
vim.o.background = "dark" -- floraverse (main)
```

## Configuration

```lua
require("floraverse").setup({
  style = "main", -- "main", "midnight", "twilight", "day", "dawn"
  light_style = "day", -- The theme used when background is set to light
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

  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors

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

### [Lualine](https://github.com/nvim-lualine/lualine.nvim)

To use the lualine theme, set it in your lualine config:
```lua
require('lualine').setup {
  options = {
    -- Also available: floraverse-midnight, floraverse-twilight,
    -- floraverse-day, floraverse-dawn
    theme = 'floraverse'
  }
}
```

Plugin support is automatically enabled when using lazy.nvim, or you can manually control which plugins to enable in the configuration.

## Extras

Floraverse can also generate theme files for a variety of other applications. These generated files can be found in the `extras/` directory of the plugin repository.

To use them, copy the contents of the relevant file into your application's configuration.

Supported applications:
- [Btop](https://github.com/aristocratos/btop) - Resource monitor
- [eza](https://eza.rocks) - Modern `ls` replacement
- [Fish](https://fishshell.com/docs/current/index.html) - Friendly interactive shell
- [Ghostty](https://github.com/ghostty-org/ghostty) - GPU-accelerated terminal emulator
- [Lazygit](https://github.com/jesseduffield/lazygit) - Terminal UI for git
- [Tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer

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
