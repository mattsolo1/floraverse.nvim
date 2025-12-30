local Util = require("floraverse.util")

local M = {}

---@type table<string, Palette|fun(opts:floraverse.Config):Palette>
M.styles = {
  main = require("floraverse.colors.main"),
  day = require("floraverse.colors.day"),
  midnight = require("floraverse.colors.midnight"),
  twilight = require("floraverse.colors.twilight"),
  dawn = require("floraverse.colors.dawn"),
}

---@param opts? floraverse.Config
function M.setup(opts)
  opts = require("floraverse.config").extend(opts)

  Util.day_brightness = opts.day_brightness

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) ---@as Palette
  end

  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.git.add, 0.2),
    delete = Util.blend_bg(colors.git.delete, 0.2),
    change = Util.blend_bg(colors.git.change, 0.2),
    text = Util.blend_bg(colors.git.change, 0.5),
  }

  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.cyan

  opts.on_colors(colors)

  return colors, opts
end

return M
