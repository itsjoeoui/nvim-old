return require("packer").startup(function(use)
    -- Package Manager
    use("wbthomason/packer.nvim")

    -- Theme
    use("folke/tokyonight.nvim")
    use({
        "nvim-lualine/lualine.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use("nvim-treesitter/nvim-treesitter-context")

    -- LSP
    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })
    use({"jose-elias-alvarez/null-ls.nvim"})

    -- Git
    use("lewis6991/gitsigns.nvim")
    use({
        "TimUntersberger/neogit",
        requires = "nvim-lua/plenary.nvim",
    })

    -- Others
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = "nvim-lua/plenary.nvim",
    })
    use("ThePrimeagen/harpoon")

    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons", -- optional, for file icons
        tag = "nightly", -- optional, updated every week. (see issue #1193)
    })
    use({ 'christoomey/vim-tmux-navigator' })
end)
