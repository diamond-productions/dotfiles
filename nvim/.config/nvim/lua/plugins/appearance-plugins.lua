-- https://dotfyle.com/neovim/colorscheme/trending
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
    }, 
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,

        config = function()
            require("cyberdream").setup({
                transparent = true,
                italic_comments = true,
                hide_fillchars = true,
                terminal_colors = false,
                cache = true,
                borderless_telescope = { border = false, style = "flat" },
                theme = { variant = "auto" },
            })
        end, 

    },
    {
        "ellisonleao/gruvbox.nvim", 
        priority = 1000 , 
        config = true, 
        opts = ...,
    }
}
