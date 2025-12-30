local Util = require("floraverse.util")

local M = {}

--- @type table<string, {ext:string, url:string, label:string, subdir?: string, sep?:string}>
-- stylua: ignore
M.extras = {
  btop             = { ext = "theme", url = "https://github.com/aristocratos/btop", label = "Btop++" },
  eza              = { ext = "yml", url = "https://eza.rocks", label = "eza" },
  fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  fish_themes      = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes" },
  ghostty          = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
  lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  tmux             = { ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux" },
}

function M.setup()
  local floraverse = require("floraverse.theme")
  vim.o.background = "dark"

  -- map of style to style name
  local styles = {
    main = " Main",
    midnight = " Midnight",
    twilight = " Twilight",
    day = " Day",
    dawn = " Dawn",
  }

  ---@type string[]
  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  for _, extra in ipairs(names) do
    local info = M.extras[extra]
    local plugin = require("floraverse.extra." .. extra)
    for style, style_name in pairs(styles) do
      local colors, groups, opts = floraverse.setup({ style = style, plugins = { all = true } })
      local fname = extra
        .. (info.subdir and "/" .. info.subdir .. "/" or "")
        .. "/floraverse"
        .. (info.sep or "_")
        .. style
        .. "."
        .. info.ext
      fname = string.gsub(fname, "%.$", "") -- remove trailing dot when no extension
      colors["_upstream_url"] = "https://github.com/solom4/floraverse.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Floraverse" .. style_name
      colors["_name"] = "floraverse_" .. style
      colors["_style"] = style
      print("[write] " .. fname)
      Util.write("extras/" .. fname, plugin.generate(colors, groups, opts))
    end
  end
end
M.setup()

return M
