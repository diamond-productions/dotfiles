return {
    -- Vscode-like pictograms
    {
        "onsails/lspkind.nvim",
        event = { "VimEnter" },
    },
    -- Auto-completion engine
    {
        "hrsh7th/nvim-cmp",
        dependencies = {

            -- LSP manager
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",

            "lspkind.nvim",
            "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
            "hrsh7th/cmp-buffer",   -- buffer auto-completion
            "hrsh7th/cmp-path",     -- path auto-completion
            "hrsh7th/cmp-cmdline",  -- cmdline auto-completion
        },
        config = function()
            require("plugins.config.nvim-cmp")
        end,
    },
    -- Code snippet engine
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
    },
    -- comment and uncomment code easily
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
        opts = {
            -- add any options here
        }
    },

    -- nvim-tree
    {

        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("plugins.config.nvim-tree")
        end,
    },
    -- Typst Preview
    {
        'chomosuke/typst-preview.nvim',
        ft = 'typst',
        version = '0.3.*',
        build = function() require 'typst-preview'.update() end,
    },
    --Typst.vim https://github.com/kaarmu/typst.vim
    {
        "kaarmu/typst.vim",
        ft = 'typst',
        lazy = false
    },
    {
        "jpalardy/vim-slime",
        init = function()
            --  target kitty terminal
            vim.g.slime_target = "kitty"
        end,
    },
    --auto-brackets https://github.com/m4xshen/autoclose.nvim
    {
        "m4xshen/autoclose.nvim"
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

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
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,

        -- This configuration is mainly implemented from their github repository.

        config = function()
            require('plugins.config.lualine')
        end,
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        }
    },

    -- lazygit.nvim
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    }

}
