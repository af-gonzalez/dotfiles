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

-- Terminal keymaps
vim.keymap.set("n", "<C-/>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<leader>ts", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "bottom", height = 0.3 } })
end, { desc = "Terminal Split (Root)" })
vim.keymap.set("n", "<leader>tv", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "right", width = 0.4 } })
end, { desc = "Terminal Vertical Split (Root)" })
vim.keymap.set("n", "<leader>tS", function()
  Snacks.terminal(nil, { win = { position = "bottom", height = 0.3 } })
end, { desc = "Terminal Split (cwd)" })

vim.keymap.set("n", "<leader>tV", function()
  Snacks.terminal(nil, { win = { position = "left", width = 0.4 } })
end, { desc = "Terminal Vertical Split (cwd)" })
