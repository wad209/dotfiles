local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = "\\"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Disable arrow keys
keymap("", "<up>", "<nop>")
keymap("", "<down>", "<nop>")
keymap("", "<left>", "<nop>")
keymap("", "<right>", "<nop>")

-- Toggle auto-indenting for code paste
keymap("n", "<F2>", ":set invpaste paste?<CR>")
vim.opt.pastetoggle = "<F2>"

-- Move around splits using Ctrl + {h,j,k,l}
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")
--
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Clear search highlighting
keymap("n", "<leader>h", ":nohl<CR>")

-- Reload configuration without restart nvim
keymap("n", "<leader>r", ":so %<CR>")

-- Plugins
-- NvimTree
keymap("n", "<leader>n", ":NvimTreeFocus<CR>") -- open/close

-- Tagbar
keymap("n", "<leader>t", ":SymbolsOutline<CR>") -- open/close

-- Telescope
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
keymap("n", "<leader>fo", "<cmd>lua require('telescope.builtin').oldfiles()<cr>")

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<Leader>dbc", "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- vim-illuminate
-- Doesn't work on Mac?
keymap("n", "<a-n>", "<cmd>lua require('illuminate').next_reference{wrap=true}<cr>", { noremap = true })
keymap("n", "<a-p>", "<cmd>lua require('illuminate').next_reference{reverse=true,wrap=true}<cr>", { noremap = true })
