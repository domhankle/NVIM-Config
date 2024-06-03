return {
    "voldikss/vim-floaterm",
   config = function()


        vim.g.floaterm_wintype = 'split'
        vim.g.floaterm_height = 0.25

        local keymap = vim.keymap

        keymap.set("n", "<leader>To", "<cmd>FloatermNew<CR><C-\\><C-n>", { desc = "Create a new terminal" })
        keymap.set("n", "<leader>Tt", "<cmd>FloatermToggle<CR><C-\\><C-n>", { desc = "Toggle the terminal" })
        keymap.set("n", "<leader>Tn", "<cmd>FloatermNext<CR><C-\\><C-n>", { desc = "Go to next terminal" })
        keymap.set("n", "<leader>Tp", "<cmd>FloatermPrev<CR><C-\\><C-n>", { desc = "Go to previous terminal" })
        keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Go to normal mode from terminal mode" })


    end
}
