local Util = require("floraverse.util")
local M = {}
M.url = "https://github.com/phaazon/hop.nvim"

---@type fun(colors: ColorScheme, opts:floraverse.Config):floraverse.Highlights
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey    = { fg = c.magenta, bold = true },
    HopNextKey1   = { fg = c.blue, bold = true },
    HopNextKey2   = { fg = Util.blend_bg(c.blue, 0.6) },
    HopUnmatched  = { fg = c.fg_gutter },
  }
end

return M
