require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"cohama/lexima.vim",
	"cormacrelf/dark-notify", -- TODO: configure
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- TODO: use telescope with goto def & references
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } }, -- TODO: keybind to open to the location of the current open buffer
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-context",
	"nvim-treesitter/playground",
	"ThePrimeagen/harpoon",
	"tpope/vim-fugitive", -- TODO: pop out git status in pane & view diff

	-- TODO: tabline just as a ref for what's open
	-- TODO: whichkey for cheat sheet
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
