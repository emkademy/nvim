-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Bufferline
vim.keymap.set("n", "<localleader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<localleader>$", "<Cmd>BufferLineGoToBuffer -1<CR>", { noremap = true, silent = true })

-- Windows
vim.keymap.set("n", "<leader>1", "<Cmd>1wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>2", "<Cmd>2wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>3", "<Cmd>3wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>4", "<Cmd>4wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>5", "<Cmd>5wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>6", "<Cmd>6wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>7", "<Cmd>7wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>8", "<Cmd>8wincmd w<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>9", "<Cmd>9wincmd w<Cr>", { noremap = true, silent = true })

-- Yank
map("v", "<localleader>y", '"+y', { noremap = true, silent = true })
map("n", "<localleader>p", '"+p', { noremap = true, silent = true })

-- CamelCaseMotion
map("n", "w", "<Plug>CamelCaseMotion_w", { silent = true, noremap = true })
map("v", "w", "<Plug>CamelCaseMotion_w", { silent = true, noremap = true })
map("n", "cw", "c<Plug>CamelCaseMotion_w", { silent = true, noremap = true })

map("n", "b", "<Plug>CamelCaseMotion_b", { silent = true, noremap = true })
map("v", "b", "<Plug>CamelCaseMotion_b", { silent = true, noremap = true })
map("n", "cb", "c<Plug>CamelCaseMotion_b", { silent = true, noremap = true })

map("n", "e", "<Plug>CamelCaseMotion_e", { silent = true, noremap = true })
map("v", "e", "<Plug>CamelCaseMotion_e", { silent = true, noremap = true })
map("n", "ce", "c<Plug>CamelCaseMotion_e", { silent = true, noremap = true })

map("n", "ge", "<Plug>CamelCaseMotion_ge", { silent = true, noremap = true })
map("v", "ge", "<Plug>CamelCaseMotion_ge", { silent = true, noremap = true })

--
vim.keymap.del("n", "<C-l>", { silent = true })
vim.keymap.del("t", "<C-l>", { silent = true })
