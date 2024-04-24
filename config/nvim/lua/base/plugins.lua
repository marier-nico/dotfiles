require("lazy").setup({
	-- UI
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	"cormacrelf/dark-notify",
	{ "akinsho/toggleterm.nvim", config = true },
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	-- Quality of life
	{ "nvim-lua/plenary.nvim" },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	"folke/which-key.nvim",
	{ "kylechui/nvim-surround", event = "VeryLazy" },
	"numToStr/Comment.nvim",
	"gbprod/yanky.nvim",
	-- TODO: flash.nvim (& catppuccin colors)
	-- File management
	"nvim-telescope/telescope.nvim",
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	"nvim-telescope/telescope-ui-select.nvim",
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{
		"s1n7ax/nvim-window-picker",
		name = "window-picker",
		event = "VeryLazy",
		version = "2.*",
		config = function()
			require("window-picker").setup({
				hint = "floating-big-letter",
				show_prompt = false,
			})
		end,
	},
	"ThePrimeagen/harpoon",
	"tpope/vim-projectionist",
	-- Syntax
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-textobjects",
	"windwp/nvim-ts-autotag",
	"tpope/vim-unimpaired",
	-- Test
	{ "nvim-neotest/neotest", dependencies = "nvim-neotest/neotest-jest" },
	-- Git
	"NeogitOrg/neogit",
	"lewis6991/gitsigns.nvim",
	{ "pwntester/octo.nvim", dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	} },
	{
		"akinsho/git-conflict.nvim",
		version = "*",
		config = true,
	},
	-- Project
	"rmagatti/auto-session",
	{ "nvimdev/dashboard-nvim", event = "VimEnter", dependencies = { { "nvim-tree/nvim-web-devicons" } } },
	-- LSP
	"pmizio/typescript-tools.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jay-babu/mason-null-ls.nvim",
	"neovim/nvim-lspconfig",
	"jose-elias-alvarez/null-ls.nvim",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"davidsierradz/cmp-conventionalcommits",
	"onsails/lspkind.nvim",
	"L3MON4D3/LuaSnip",
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-tree.lua",
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
})
