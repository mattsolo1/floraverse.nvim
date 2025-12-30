---@type Palette
return {
  -- Base UI Colors
  bg = "#0a0810",
  fg = "#dbd1b9",
  fg_dark = "#f3e0b8", -- From palette 7, good for muted text
  comment = "#4c3866", -- From palette 8

  -- UI Accents & Variations
  bg_dark = "#06050a", -- From palette 0
  bg_highlight = "#12101a", -- A manually derived lighter shade of bg
  bg_visual = "#4c3866", -- Using palette 8 for visual selection, slightly transparent
  fg_gutter = "#3a3842", -- A manually derived muted foreground
  border = "#4c3866", -- Using palette 8 for borders

  -- Primary Palette (from your brighter terminal colors)
  red = "#d02063",     -- palette 9
  green = "#b4ce59",   -- palette 10
  yellow = "#fac357",  -- palette 11
  blue = "#40a4cf",    -- palette 12
  magenta = "#f12aae", -- palette 13
  cyan = "#62caa8",    -- palette 14
  orange = "#cd751c",  -- palette 3
  purple = "#b7077e",  -- palette 5

  -- Git and Diff colors
  git = {
    add = "#5d731a",    -- palette 2
    change = "#1d6da1", -- palette 4
    delete = "#7e1a46", -- palette 1
  },

  -- Terminal Colors (direct mapping from your palette)
  terminal = {
    black = "#08002e",
    red = "#7e1a46",
    green = "#5d731a",
    yellow = "#cd751c",
    blue = "#1d6da1",
    magenta = "#b7077e",
    cyan = "#42a38c",
    white = "#f3e0b8",
    black_bright = "#4c3866",
    red_bright = "#d02063",
    green_bright = "#b4ce59",
    yellow_bright = "#fac357",
    blue_bright = "#40a4cf",
    magenta_bright = "#f12aae",
    cyan_bright = "#62caa8",
    white_bright = "#fff5db",
  },
}
