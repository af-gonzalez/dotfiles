-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")
vim.keymap.del("v", "<A-j>")
vim.keymap.del("v", "<A-k>")

vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Window Left" })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Window Right" })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Window Down" })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Window Up" })

vim.keymap.set("n", "<leader>tcc", function()
  Snacks.terminal("claude", { cwd = LazyVim.root(), win = { position = "right", width = 0.3 } })
end, { desc = "Terminal Vertical Split (Root)" })

vim.keymap.set("n", "<leader>tcp", function()
  Snacks.terminal("copilot", { cwd = LazyVim.root(), win = { position = "right", width = 0.3 } })
end, { desc = "Terminal Vertical Split (Root)" })

vim.keymap.set("n", "<leader>t1", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float", width = 0.3 }, count = 1 })
end, { desc = "Terminal Vertical Split (Root)" })

vim.keymap.set("n", "<leader>t2", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "bottom", width = 0.3 }, count = 2 })
end, { desc = "Terminal Vertical Split (Root)" })

vim.keymap.set("n", "<leader>t3", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "bottom", width = 0.3 }, count = 3 })
end, { desc = "Terminal Vertical Split (Root)" })
