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
}
