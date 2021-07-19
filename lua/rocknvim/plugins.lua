local fn = vim.fn
local M = {}

function M.init()
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    local clone_url = "https://github.com/wbthomason/packer.nvim"

    print("Downloading packer.nvim using git... (Neovim Package Manager)")
    fn.system({'git', 'clone', clone_url, install_path})
    print("Downloaded packer.nvim!")

    vim.cmd [[packadd packer.nvim]]
  end 

  local packer_ok, packer = pcall(require, "packer")
  if not packer_ok then return false
  end

  M.packer = packer
  return true
end

function M.load(...)
  if M.packer == nil then
    return
  end

  local arg={...}

  return M.packer.startup(function(use)
    for _, plugins in ipairs(arg) do
      for _, plugin in ipairs(plugins) do
        use(plugin)
      end
    end
  end)
end

return M
