local M = {}

---@class nekonight.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: nekonight.Highlights, colors: ColorScheme)
M.defaults = {
  style = "moon", 
  light_style = "day",
  transparent = true, 
  terminal_colors = true, 
  
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark", 
    floats = "dark", 
  },

  day_brightness = 0.3, 
  dim_inactive = false, 
  lualine_bold = false, 
  ---@param colors ColorScheme
  on_colors = function(colors) end,
  ---@param highlights nekonight.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  cache = true, 

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    all = package.loaded.lazy == nil,
    auto = true,
    telescope = true,
  },
}
