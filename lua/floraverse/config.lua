local M = {}

---@class floraverse.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: floraverse.Highlights, colors: ColorScheme)
M.defaults = {
  style = "main", -- Available styles: "main", "midnight", "twilight", "day", "dawn"
  light_style = "day", -- The theme used when background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },

  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors

  plugins = {
    all = package.loaded.lazy == nil,
    auto = true,
  },

  ---@param colors ColorScheme
  on_colors = function(colors) end,

  ---@param highlights floraverse.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
}

---@type floraverse.Config
M.options = nil

---@param options? floraverse.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? floraverse.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
