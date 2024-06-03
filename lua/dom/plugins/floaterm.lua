return {
    "voldikss/vim-floaterm",
   config = function()


        vim.g.floaterm_wintype = 'split'

        local keymap = vim.keymap

        keymap.set("n", "<C-t>o", "<cmd>FloatermNew<CR>", { desc = "Create a new terminal" })
        keymap.set("n", "<C-t>t", "<cmd>FloatermToggle<CR>", { desc = "Toggle the terminal" })
        keymap.set("n", "<C-t>n", "<cmd>FloatermNext<CR>", { desc = "Go to next terminal" })
        keymap.set("n", "<C-t>p", "<cmd>FloatermPrev<CR>", { desc = "Go to previous terminal" })


    end
}
