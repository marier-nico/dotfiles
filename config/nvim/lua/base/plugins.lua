require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "cohama/lexima.vim", version = "2.1.0" },
	{ "cormacrelf/dark-notify", version = "0.1.2" },
	{ "folke/trouble.nvim", version = "2.6.0", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim", version = "0.1.2" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-treesitter/nvim-treesitter", version = "0.9.0", build = ":TSUpdate" },
	{ "ThePrimeagen/harpoon" },
	{ "tpope/vim-fugitive", version = "v3.7" },
	{ "akinsho/bufferline.nvim", version = "v4.3.0", dependencies = "nvim-tree/nvim-web-devicons" }, -- TODO: config (?)
	{ "folke/which-key.nvim" },
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

	-- TODO: yanky
	-- TODO: vim-tmux-navigator (tmux for projects)
	-- TODO: nvim-autopairs
	-- TODO: nvim-surround
	-- TODO: nvim-neoclip (?)
	-- TODO: indent-blankline
	-- TODO: flash.nvim
	-- TODO: fidget
	-- TODO: comment

	-- LSP Stuff
	-- TODO: typescript specific keybinds for rename, imports, etc.
	-- TODO: keybind to goto next diagnostic
	-- TODO: keybind to goto next changeset
	-- TODO: keybind to goto (gt) / create test (ct)
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
})
