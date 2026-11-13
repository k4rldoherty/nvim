-- Telescope related files
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Search text" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find help" })

-- Format a buffer
vim.keymap.set("n", "<leader>F", function()
    require("conform").format({
        async = true,
        lsp_format = "never",
    })
end, {
    desc = "Format current buffer",
})

-- Buffer related things
vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<CR>", {
    desc = "Next Buffer",
})

vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<CR>", {
    desc = "Previous Buffer",
})
-- Show diagnostics in a floating window
vim.keymap.set("n", "<leader>e", function()
    vim.diagnostic.open_float()
end, { desc = "Show diagnostics" })

-- Jump to the next diagnostic
vim.keymap.set("n", "]d", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

-- Jump to the previous diagnostic
vim.keymap.set("n", "[d", function()
    vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })
