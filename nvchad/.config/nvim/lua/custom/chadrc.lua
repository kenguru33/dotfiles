---@type ChadrcConfig
local M = {}

M.ui = { 
  theme = 'catppuccin',
  hl_override = {
  Type = { italic = true },
  SpecialComment = { italic = true },
  TSAttribute = { italic = true },
  TSParameter = { italic = true },
  TSLabel = { italic = true },
  TSVariableBuiltin = { italic = true },
  TSTagAttribute = { italic = true },
  Comment = { italic = true },
  },
  statusline = {
  theme = "vscode",
  separator_style = "block"
  } 
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
