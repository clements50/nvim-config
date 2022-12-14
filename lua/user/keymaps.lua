local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap("n", "<leader>q", ":q<cr>", opts)
keymap("n", "<leader>qf", ":q!<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>e", ":Ex<cr>", opts)
keymap("n", "<leader>f", ":Telescope find_files<cr>", opts)

--opening windows
keymap("n", "<leader>vb", ":vert sb<cr> | <C-w>l", opts)
keymap("n", "<leader>hb", ":sb<cr> | <C-w>j", opts)

--better window navigation
keymap("n", "<leader>bl", "<C-w>l", opts)
keymap("n", "<leader>bh", "<C-w>h", opts)
keymap("n", "<leader>bj", "<C-w>j", opts)
keymap("n", "<leader>bk", "<C-w>k", opts)

--dap
keymap("n", "<leader>d", ":lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>5", ":lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>6", ":lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dr", ":lua require'dap'.repl.open()<cr>", opts)

--dapui
keymap("n", "<leader>do", ":lua require('dapui').open()<cr>", opts)
keymap("n", "<leader>dc", ":lua require('dapui').close()<cr>", opts)
keymap("n", "<leader>dt", ":lua require('dapui').toggle()<cr>", opts)
keymap("n", "<leader>dw", ":lua require('dapui').float_element()<cr>", opts)

--lsp
keymap("n", "<leader>dd", ":lua vim.diagnostic.open_float()<cr>", opts)
