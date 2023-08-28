require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{ "cormacrelf/dark-notify" },
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "ThePrimeagen/harpoon" },
	{ "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "folke/which-key.nvim" },
	{ "akinsho/toggleterm.nvim", config = true },
	{ "lewis6991/gitsigns.nvim" },
	{ "glepnir/dashboard-nvim", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "rcarriga/nvim-notify" },
	{
		"pwntester/octo.nvim", -- TODO: config / learn
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "nvim-tree/nvim-web-devicons" },
	},
	{ "windwp/nvim-ts-autotag" },
	{ "kylechui/nvim-surround", event = "VeryLazy" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "numToStr/Comment.nvim" },
	{ "gbprod/yanky.nvim" },
	{ "pmizio/typescript-tools.nvim" },
	{ "NeogitOrg/neogit" },
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-lua/plenary.nvim" } },

	{ "tpope/vim-projectionist" },
	{ "nvim-neotest/neotest", dependencies = "haydenmeade/neotest-jest" },

	-- TODO: vim-tmux-navigator (tmux for projects)
	-- TODO: flash.nvim (& catppuccin colors)

	-- LSP Stuff
	-- TODO: keybind to goto (gt) / create test (ct)
	-- https://github.com/tpope/vim-projectionist
	-- https://www.dev-log.me/Jump_between_test_files_and_implementation_in_Vim/
	-- https://github.com/vim-test/vim-test
	-- https://github.com/nvim-neotest/neotest
	-- snippet for unit test
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
