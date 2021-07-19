-- DO NOT MODIFY THIS FILE UNLESS CONTRIBUTING TO PROJECT
--
-- You can find your private config at:
-- stdpath('config')/lua/user/config/init.lua
--
-- You can find your config path using the follwing command:
-- :echo stdpath('config')

local options = require('rocknvim.options')
options.set()

local plugins = require('rocknvim.plugins')
plugins.init()

if plugins.packer == nil then
  print("Could not load plugin manager.")
end



plugins.load({
  { 'wbthomason/packer.nvim' },
})
