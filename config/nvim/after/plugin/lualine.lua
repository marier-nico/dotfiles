require("lualine").setup({
	options = {
		theme = "catppuccin",
	},
	sections = {
		lualine_y = { require("auto-session.lib").current_session_name },
	},
})
