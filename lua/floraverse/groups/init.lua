local M = {}

M.plugins = {
  ["gitsigns.nvim"] = "gitsigns",
  ["neo-tree.nvim"] = "neo-tree",
  ["blink.cmp"] = "blink",
  ["snacks.nvim"] = "snacks",
  ["hop.nvim"] = "hop",
  ["trouble.nvim"] = "trouble",
  ["telescope.nvim"] = "telescope",
  ["nvim-cmp"] = "cmp",
  ["which-key.nvim"] = "which-key",
}

function M.get_group(name)
  ---@type {get: fun(colors: ColorScheme, opts:floraverse.Config):floraverse.Highlights, url: string}
  return require("floraverse.groups." .. name)
end

---@param colors ColorScheme
---@param opts floraverse.Config
function M.get(name, colors, opts)
  local mod = M.get_group(name)
  return mod.get(colors, opts)
end

---@param colors ColorScheme
---@param opts floraverse.Config
function M.setup(colors, opts)
  local groups = {
    base = true,
    treesitter = true,
  }

  -- Handle plugin integrations
  if opts.plugins.all then
    for _, group in pairs(M.plugins) do
      groups[group] = true
    end
  elseif opts.plugins.auto and package.loaded.lazy then
    local lazy_plugins = require("lazy.core.config").plugins
    for plugin, group in pairs(M.plugins) do
      if lazy_plugins[plugin] then
        groups[group] = true
      end
    end
  end

  -- Manually enable/disable plugins
  for plugin, group in pairs(M.plugins) do
    local use = opts.plugins[group]
    use = use == nil and opts.plugins[plugin] or use
    if use ~= nil then
      if type(use) == "table" then
        use = use.enabled
      end
      groups[group] = use or nil
    end
  end

  local ret = {}
  for group in pairs(groups) do
    for k, v in pairs(M.get(group, colors, opts)) do
      ret[k] = v
    end
  end

  require("floraverse.util").resolve(ret)

  opts.on_highlights(ret, colors)

  return ret, groups
end

return M
