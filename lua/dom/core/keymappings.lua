-- Local Variables --

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set <leader> key to <Space> --
vim.g.mapleader = ' '

-- Normal Mode --

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "Qf", ":wq<CR>", opts)
keymap("n", "QF", ":q!<CR>", opts)
keymap("n", "Qa", ":wqa<CR>", opts)
keymap("n", "QA", ":qa!<CR>", opts)

-- Insert Mode --

  -- vim-fugitive --
  keymap({"n"}, "<leader>ga", ":Git add *<CR>", opts)
  keymap({"n"}, "<leader>gc", ":Git commit<CR>", opts)
  keymap({"n"}, "<leader>gp", ":Git push<CR>", opts)
  keymap({"n"}, "<leader>gs", ":Git stash<CR>", opts)

-- Shared --

keymap({"n", "i"}, "<C-s>", "<ESC>:w<CR>", opts)

  -- nvim-tree --

  keymap({"n", "i"}, "<C-n>", ":NvimTreeToggle<CR>", opts)

  -- telescope --

  keymap({"n", "i"}, "<C-f>", ":Telescope live_grep<CR>", opts)
  keymap({"n", "i"}, "<C-p>", ":Telescope find_files<CR>", opts)
