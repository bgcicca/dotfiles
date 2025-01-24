require "core.options"

local fastvim_home = os.getenv "FASTVIM_HOME" or vim.fn.expand "~/.config/fastvim"

local lua_path = fastvim_home .. "/lua/?.lua;" .. fastvim_home .. "/lua/?/init.lua"
package.path = package.path .. ";" .. lua_path

if vim.fn.isdirectory(fastvim_home) == 1 then
  dofile(fastvim_home .. "/init.lua")
end

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

local plugins = require "plugins.init"
require("lazy").setup(plugins)
