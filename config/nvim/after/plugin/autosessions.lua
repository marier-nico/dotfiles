local function pre_save()
	local api = require("nvim-tree.api")
	api.tree.close()
end

require("auto-session").setup({
	log_level = "error",
	auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
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
		"gitblame",
		"packer",
		"neogit",
	},
	auto_restore_enabled = false,
	pre_save_cmds = { pre_save },
})

vim.keymap.set("n", "<C-a>", require("auto-session.session-lens").search_session, {
	noremap = true,
	desc = "Search sessions",
})
