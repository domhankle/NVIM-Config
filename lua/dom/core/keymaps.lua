vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set({"n", "i", "t"}, "<C-Up>", "<cmd>resize +2<CR>", { desc = "Resize window shorter from bottom" })
keymap.set({"n", "i", "t"}, "<C-Down>", "<cmd>resize -2<CR>", { desc = "Resize window taller from bottom" })
keymap.set({"n", "i", "t"}, "<C-Right>", "<cmd>vertical resize -2<CR>", { desc = "Resize window wider from right" })
keymap.set({"n", "i", "t"}, "<C-Left>", "<cmd>vertical resize +2<CR>", { desc = "Resize window wider from left" })

-- keymap.set("n", "<C-t>", "<cmd>terminal<CR>")
-- keymap.set("t", "<ESC>", "<C-\\><C-n>")
-- keymap.set("t", "<C-j>", "<C-\\><C-n><C-j>")
-- keymap.set("t", "<C-h>", "<C-\\><C-n><C-h>")
-- keymap.set("t", "<C-k>", "<C-\\><C-n><C-k>")
-- keymap.set("t", "<C-l>", "<C-\\><C-n><C-l>")


keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab" })

keymap.set({"n", "i"}, "<C-s>", "<cmd>w<CR><ESC>", { desc = "Save file" })
keymap.set("n", "<C-x>", "<cmd>wqa<CR>", { desc = "Save file"})
