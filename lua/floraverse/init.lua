local config = require("floraverse.config")

local M = {}

---@param opts? floraverse.Config
function M.load(opts)
  return require("floraverse.theme").setup(opts)
end

M.setup = config.setup

return M
