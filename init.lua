options = require('rocknvim.options')
options.set()

plugins = require('rocknvim.plugins')
plugins.init()

if plugins.packer == nil then
  print("Could not load plugin manager.")
end

plugins.load({
  { 'wbthomason/packer.nvim' },
})
