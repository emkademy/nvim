-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winbar = "%=%m %f"
vim.opt.clipboard = ""
vim.opt.smartindent = true

local handle = io.popen("which python")
local python_executable_path = handle:read("*a")
python_executable_path = string.gsub(python_executable_path, "\n", "")
handle:close()

vim.g.python3_host_prog = python_executable_path
vim.g.rooter_patterns = { ".git", "Makefile", "pyproject.toml" }
