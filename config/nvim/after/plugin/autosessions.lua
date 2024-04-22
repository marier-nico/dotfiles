local function pre_save()
	local api = require("nvim-tree.api")
	api.tree.close()
end

require("auto-session").setup({
	log_level = "error",
	auto_session_suppress_dirs = { "~/", "~/Projects", "~/GitHub", "~/Downloads", "/" },
	bypass_session_save_file_types = {
		"NvimTree",
		"dashboard",
		"noice",
		"notify",
		"telescope",
		"fzf",
		"fugitive",
		"git",
		"gitcommit",
		"gitrebase",
		"gitmerge",
		"gitmessenger",
		"gitstatus",
		"NeogitStatus",
		"gitblame",
		"packer",
		"neogit",
	},
	auto_restore_enabled = false,
	pre_save_cmds = { pre_save },
	post_restore_cmds = {
		require("lualine").refresh,
		function()
			-- Restart doesn't work when servers haven't started
			vim.cmd("LspStop")
			vim.cmd("LspStart")
		end,
		function()
			local session_name = require("auto-session.lib").current_session_name()
			io.popen("alacritty msg config 'window.title=\"" .. session_name .. "\"'")
		end,
	},
})

vim.keymap.set("n", "<C-a>", require("auto-session.session-lens").search_session, {
	noremap = true,
	desc = "Search sessions",
})
