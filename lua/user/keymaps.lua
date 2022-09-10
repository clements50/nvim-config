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
