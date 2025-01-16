local wezterm = require 'wezterm'
local act = wezterm.action

local launch_menu = {}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  table.insert(launch_menu, {
    label = "Pwsh",
    args = { "pwsh.exe", "-NoLogo" },
  })
  table.insert(launch_menu, {
    label = "PowerShell",
    args = { "powershell.exe", "-NoLogo" },
  })
  table.insert(launch_menu, {
    label = "Pwsh No Profile",
    args = { "pwsh.exe", "-NoLogo", "-NoProfile" },
  })
  table.insert(launch_menu, {
    label = "PowerShell No Profile",
    args = { "powershell.exe", "-NoLogo", "-NoProfile" },
  })
else
  table.insert(launch_menu, {
    label = "Pwsh",
    args = { "/usr/local/bin/pwsh", "-NoLogo" },
  })
  table.insert(launch_menu, {
    label = "Pwsh No Profile",
    args = { "/usr/local/bin/pwsh", "-NoLogo", "-NoProfile" },
  })
end

return {
  default_prog = { "pwsh.exe", "-NoLogo" }, 
  launch_menu = launch_menu, 

  font = wezterm.font_with_fallback({
    "JetBrains Mono",
    "Fira Code",
    "Consolas",
  }),

  color_scheme = "Dracula",

  keys = {
    { key = 'C', mods = 'CTRL', action = act.CopyTo 'Clipboard' },
    { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
  },
  
  scrollback_lines = 10000,  
  enable_scroll_bar = true,  

  scroll_bar = {
    width = "2",               
    color = "#FFFFFF",   
  },
  window_background_opacity = 0.5,
  win32_acrylic_accent_color = "rgb(94, 64, 157)",
  webgpu_power_preference = "HighPerformance",
  front_end = "OpenGL",
  prefer_egl = true,
  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 5,
  },
  hide_tab_bar_if_only_one_tab = true,
  default_cursor_style = "BlinkingBar",
  use_fancy_tab_bar = true,
  tab_bar_at_bottom = false,
  window_decorations = "NONE | RESIZE",
  cell_width = 0.9,
  window_frame = {
    active_titlebar_bg = "transparent",
    inactive_titlebar_bg = "#333333",
  },
}
