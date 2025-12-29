local colors = require("floraverse.colors").setup()

local floraverse = {}

floraverse.normal = {
  a = { bg = colors.blue, fg = colors.bg_dark, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.fg },
  c = { bg = colors.bg_dark, fg = colors.fg_dark },
}

floraverse.insert = {
  a = { bg = colors.green, fg = colors.bg_dark, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

floraverse.command = {
  a = { bg = colors.yellow, fg = colors.bg_dark, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

floraverse.visual = {
  a = { bg = colors.magenta, fg = colors.bg_dark, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

floraverse.replace = {
  a = { bg = colors.red, fg = colors.bg_dark, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

floraverse.terminal = {
  a = { bg = colors.cyan, fg = colors.bg_dark, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

floraverse.inactive = {
  a = { bg = colors.bg_dark, fg = colors.comment },
  b = { bg = colors.bg_dark, fg = colors.comment, gui = "bold" },
  c = { bg = colors.bg_dark, fg = colors.comment },
}

return floraverse
