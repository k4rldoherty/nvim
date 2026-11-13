-- return {
--     'nvim-telescope/telescope.nvim', version = '*',
--     dependencies = {
--         'nvim-lua/plenary.nvim',
--         -- optional but recommended
--         { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
--     }
-- }

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },

    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                sorting_strategy = "ascending",
                layout_config = {
                    prompt_position = "top",
                },
            },
        })

        telescope.load_extension("fzf")
    end,
}
