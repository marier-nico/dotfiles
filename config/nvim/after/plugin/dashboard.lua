require("dashboard").setup({
	theme = "hyper",
	change_to_vcs_root = true,
	config = {
		shortcut = {
			{
				desc = "View Sessions",
				key = "a",
				action = function()
					require("auto-session.session-lens").search_session()
				end,
			},
			{
				desc = "Load Session",
				key = "s",
				action = function()
					vim.cmd("SessionRestore")
				end,
			},
			{
				desc = "Find File",
				key = "f",
				action = function()
					require("telescope.builtin").find_files()
				end,
			},
		},
		packages = { enable = true },
		project = {
			enable = true,
			limit = 5,
			icon = " ",
			label = "Projects",
			action = function(path)
				require("telescope.builtin").find_files({ cwd = path })
			end,
		},
		mru = { limit = 10, icon = "󰈙 ", label = "Recent Files", cwd_only = true },
		footer = {},
	},
})
