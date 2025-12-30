local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type fun(colors: ColorScheme, opts:floraverse.Config):floraverse.Highlights
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpItemAbbrDeprecated = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.blue, bg = c.none, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.blue, bg = c.none, bold = true },
    CmpItemMenu = { fg = c.comment, bg = c.none },
    CmpItemKindDefault = { fg = c.fg_dark, bg = c.none },
  }

  require("floraverse.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
