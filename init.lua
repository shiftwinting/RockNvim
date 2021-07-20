-- DO NOT MODIFY THIS FILE UNLESS CONTRIBUTING TO PROJECT
--
-- You can find your private config at
-- stdpath('config')/lua/user/config/init.lua
--
-- You can find your config path using the follwing command
-- :echo stdpath('config')

local fn = vim.fn

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

-- Create user config dirs

local function create_dir(dir)
  if fn.isdirectory(dir) == 0 then
    fn.mkdir(dir)
  end
end

local config_path = fn.stdpath('config')
create_dir(config_path .. '/lua/user/')
create_dir(config_path .. '/lua/user/config/')
create_dir(config_path .. '/lua/user/modules/')

local user_init_path = config_path .. '/lua/user/config/init.lua'
if fn.filereadable(user_init_path) == 0 then
  local user_config_file = io.open(user_init_path, 'w')
  user_config_file:write("")
  user_config_file:close()
end
