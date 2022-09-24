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
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
	use("onsails/lspkind.nvim")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})

	-- CMP
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use({
		"tzachar/cmp-tabnine",
		run = "./install.sh",
		requires = "hrsh7th/nvim-cmp",
		config = function()
			require("cmp").setup({
				sources = {
					{ name = "cmp_tabnine" },
				},
			})
		end,
	})
	use({
		"L3MON4D3/LuaSnip",
		tag = "v1.*",
	})

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
	use("ThePrimeagen/git-worktree.nvim")
	use("ThePrimeagen/harpoon")
	use("glepnir/dashboard-nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons", -- optional, for file icons
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
end)
