local plugins = require "fastvim.modules.handlers.install_plugins"

plugins.install_plugins = {
  { "ellisonleao/gruvbox.nvim" },
  {
    "fastvim/fastvim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
