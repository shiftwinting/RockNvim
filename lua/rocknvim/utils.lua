local fn = vim.fn
local M = {}

function M.print_error(msg, beep)
  msg = fn.fnameescape(msg)
  vim.api.nvim_command('echohl ErrorMsg')
  vim.api.nvim_command('echomsg "' .. msg .. '"')
  vim.api.nvim_command('echohl None')
end

function M.load_rock_modules(...)
end

function M.load_user_modules(...)
end

return M
