require("lazy").setup({
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{ "cormacrelf/dark-notify" },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
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
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{ "ThePrimeagen/harpoon" },
	{ "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "folke/which-key.nvim" },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{ "akinsho/toggleterm.nvim", config = true },
	{ "lewis6991/gitsigns.nvim" },
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "rcarriga/nvim-notify" },
	{ "windwp/nvim-ts-autotag" },
	{ "kylechui/nvim-surround", event = "VeryLazy" },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	{ "numToStr/Comment.nvim" },
	{ "gbprod/yanky.nvim" },
	{ "NeogitOrg/neogit" },
	{ "pwntester/octo.nvim", dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	} },
	{
		"akinsho/git-conflict.nvim",
		version = "*",
		config = true,
	},

	{ "tpope/vim-projectionist" },
	{ "tpope/vim-unimpaired" },
	{ "nvim-neotest/neotest", dependencies = "nvim-neotest/neotest-jest" },

	{ "christoomey/vim-tmux-navigator" },
	{ "rmagatti/auto-session" },
	{ "nvimdev/dashboard-nvim", event = "VimEnter", dependencies = { { "nvim-tree/nvim-web-devicons" } } },
	-- TODO: flash.nvim (& catppuccin colors)

	-- LSP Stuff
	{ "pmizio/typescript-tools.nvim" },
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
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
})
