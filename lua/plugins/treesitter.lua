return {
    "nvim-treesitter/nvim-treesitter",

    dependencies = {
        "neovim-treesitter/treesitter-parser-registry",
    },

    lazy = false,
    build = ":TSUpdate",
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local buf = args.buf
                pcall(vim.treesitter.start, buf)
            end,
        })
    end,
}
