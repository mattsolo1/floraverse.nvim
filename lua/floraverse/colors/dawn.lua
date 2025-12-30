---@param opts floraverse.Config
return function(opts)
  local Util = require("floraverse.util")

  ---@type Palette
  local colors = vim.deepcopy(require("floraverse.colors.twilight"))

  Util.invert(colors)
  colors.bg_dark = Util.blend(colors.bg, 0.9, colors.fg)
  return colors
end
