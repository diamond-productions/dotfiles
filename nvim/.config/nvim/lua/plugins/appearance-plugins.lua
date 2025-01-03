-- Themes and colorscheme
return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'uloco/bluloco.nvim',
        lazy = false,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
        config = function()
            -- your optional config goes here, see below.
        end,
    }
}
