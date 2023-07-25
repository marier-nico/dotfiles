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
	{ "tpope/vim-fugitive", version = "v3.7" }, -- TODO: pop out git status in pane & view diff
	{ "akinsho/bufferline.nvim", version = "v4.3.0", dependencies = "nvim-tree/nvim-web-devicons" }, -- TODO: config (?)
	{ "folke/which-key.nvim" },
	{ "akinsho/toggleterm.nvim", version = "2.7.1", config = true },

	-- TODO: Resize with ctrl-arrow
	-- TODO: Add mappings to actually split windows
	-- TODO: Closing buffers (with and without save)
	-- TODO: floating window for fugitive?
	-- TODO: keybind to close other panes
	-- TODO: yanky
	-- TODO: vim-tmux-navigator (tmux for projects)
	-- TODO: toggleterm
	-- TODO: ts-autotag
	-- TODO: nvim-autopairs
	-- TODO: nvim-surround
	-- TODO: nvim-neoclip (?)
	-- TODO: lualine
	-- TODO: indent-blankline
	-- TODO: gitsigns
	-- TODO: flash.nvim
	-- TODO: fidget
	-- TODO: comment
	-- TODO: https://github.com/pwntester/octo.nvim#-pr-reviews (?)

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
