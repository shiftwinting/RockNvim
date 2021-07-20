local M = {}

M.plugins = {
  {
    'windwp/nvim-autopairs',
    config = M.config
  },
}

function M.config()
  require('nvim-autopairs').setup()
end

return M
