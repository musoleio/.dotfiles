local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "
map("", "<space>", "<nop>", opts)
map("n", "<leader>so", "<cmd>so%<cr>", opts)
map("n", "<leader>w", "<cmd>w<cr>", opts)
map("n", "<leader>\\", "<C-^>", opts)
map("n", "<leader>[", "<cmd>Commentary<cr>", opts)
-- map("n", "<leader>,", "<C-y>,<cr>", opts)


map("n", "<A-j>", ":m .+1<cr>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("v", "<A-j>", ":m .+1<cr>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)


map("v", "p", '"_dP', opts)
