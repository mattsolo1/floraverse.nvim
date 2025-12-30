# floraverse.nvim

Neovim theme inspired by <https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Floraverse.itermcolors>.

Code adapted from [folke/tokyonight](https://github.com/folke/tokyonight.nvim) with AI-assistance.

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

- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

Plugin support is automatically enabled when using lazy.nvim, or you can manually control which plugins to enable in the configuration.

### Lualine

To use the `lualine` theme, set it in your lualine config:
```lua
require('lualine').setup {
  options = {
    -- Also available: floraverse-midnight, floraverse-twilight,
    -- floraverse-day, floraverse-dawn
    theme = 'floraverse'
  }
}
```

## Extras

Floraverse can also generate theme files for a variety of other applications. These generated files can be found in the `extras/` directory of the plugin repository.

### Quick Install

Install themes to your `~/.config` directory for a specific style:

```bash
# From the plugin directory
./scripts/install_floraverse_extras.sh main

# Or choose a different style
./scripts/install_floraverse_extras.sh midnight
./scripts/install_floraverse_extras.sh twilight
./scripts/install_floraverse_extras.sh day
./scripts/install_floraverse_extras.sh dawn
```

The script will automatically detect installed applications and copy the appropriate theme files.

### Manual Installation

You can also manually copy theme files from the `extras/` directory:

| Tool                                                                                                  | Extra                                              |
| ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [Btop++](https://github.com/aristocratos/btop)                                                        | [extras/btop](extras/btop)                         |
| [eza](https://eza.rocks)                                                                              | [extras/eza](extras/eza)                           |
| [Fish](https://fishshell.com/docs/current/index.html)                                                 | [extras/fish](extras/fish)                         |
| [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting)                | [extras/fish_themes](extras/fish_themes)           |
| [Ghostty](https://github.com/ghostty-org/ghostty)                                                     | [extras/ghostty](extras/ghostty)                   |
| [Lazygit](https://github.com/jesseduffield/lazygit)                                                   | [extras/lazygit](extras/lazygit)                   |
| [Tmux](https://github.com/tmux/tmux/wiki)                                                             | [extras/tmux](extras/tmux)                         |

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
