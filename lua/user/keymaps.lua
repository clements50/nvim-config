local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap("n", "<leader>q", ":q<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>e", ":Ex<cr>", opts)
keymap("n", "<leader>f", ":Telescope find_files<cr>", opts)

--opening windows
keymap("n", "<leader>vw", ":vert sb<cr>", opts)
keymap("n", "<leader>hw", ":sb<cr>", opts)

--better window navigation
keymap("n", "<leader>b", "<C-w>", opts)

--dap

keymap("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>ds", ":lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>dso", ":lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dsi", ":lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>3", ":lua require'dap'.repl.open()<cr>", opts)

--dapui
keymap("n", "<leader>do", ":lua require('dapui').open()<cr>", opts)
keymap("n", "<leader>dc", ":lua require('dapui').close()<cr>", opts)
keymap("n", "<leader>dt", ":lua require('dapui').toggle()<cr>", opts)
keymap("n", "<leader>dw", ":lua require('dapui').float_element()<cr>", opts)
