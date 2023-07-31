require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{ "cormacrelf/dark-notify", version = "0.1.2" },
	{ "folke/trouble.nvim", version = "2.6.0", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim", version = "0.1.2" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-treesitter/nvim-treesitter", version = "0.9.0", build = ":TSUpdate" },
	{ "ThePrimeagen/harpoon" },
	{ "akinsho/bufferline.nvim", version = "v4.3.0", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "folke/which-key.nvim", version = "v1.5.1" },
	{ "akinsho/toggleterm.nvim", version = "2.7.1", config = true },
	{ "lewis6991/gitsigns.nvim", version = "v0.6" },
	{ "glepnir/dashboard-nvim", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "rcarriga/nvim-notify", version = "v3.12.0" },
	{
		"pwntester/octo.nvim", -- TODO: config / learn
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "nvim-tree/nvim-web-devicons" },
	},
	{ "windwp/nvim-ts-autotag" },
	{ "kylechui/nvim-surround", version = "2.1.0", event = "VeryLazy" },
	{ "lukas-reineke/indent-blankline.nvim", version = "2.20.7" },
	{ "numToStr/Comment.nvim", version = "0.8.0" },
	{ "gbprod/yanky.nvim", version = "1.0.0" },
	{ "pmizio/typescript-tools.nvim" },
	{ "NeogitOrg/neogit" },
	{ "mfussenegger/nvim-dap", version = "0.9.*" },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },

	-- TODO: vim-tmux-navigator (tmux for projects)
	-- TODO: flash.nvim (& catppuccin colors)

	-- LSP Stuff
	-- TODO: keybind to goto (gt) / create test (ct)
	-- https://github.com/tpope/vim-projectionist
	-- https://www.dev-log.me/Jump_between_test_files_and_implementation_in_Vim/
	-- https://github.com/vim-test/vim-test
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
		"j-hui/fidget.nvim",
		tag = "legacy",
		event = "LspAttach",
	},
})
