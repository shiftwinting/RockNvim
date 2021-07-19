local M = {}

M.default = {
  fileencoding = "utf-8", -- Set file encoding
  hidden = true, -- Edit multiple files at once without having to save
  clipboard = "unnamedplus", -- Access system clipboard
  mouse = "a", -- Enable mouse support
  termguicolors = true, -- Enable 24bit full color support
  wrap = false, -- Disable line wrap (displays lines as one long line)
  ignorecase = true, -- Ignore case in search patterns
  smartcase = true, -- Overide ingnorecase if search contains upper case letters
  splitbelow = true, -- Force all horizontal splits to go below current window
  splitright = true, -- Force all vertical splits to go to the right of current window
  pumheight = 10, -- Set popup menu height to 10
  timeoutlen = 500, -- Time in milliseconds to wait for a mapped sequence to complete
  updatetime = 300, -- Fires CursorHold autocmd after 300ms
  scrolloff = 5, -- Min number of lines to keep above and below
  sidescrolloff = 5, -- Min number of characters to keep right and left
  smartindent = true, -- Smart autoindenting when starting a new line
  swapfile = false,
  shiftwidth = 2, -- The number of spaces inserted for each indentation
  tabstop = 2, -- Insert 2 spaces for a tab
}

function M.set(options)
  M.options = vim.tbl_extend("force", M.default, options or {})
  for k, v in pairs(M.options) do
    vim.opt[k] = v
  end
end

return M
