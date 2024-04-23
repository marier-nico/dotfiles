require("lualine").setup({
	options = {
		theme = "catppuccin",
	},
	sections = {
		lualine_b = {
			{
				"branch",
				fmt = function(branch_name, _ctx)
					local task_id_start, task_id_end = string.find(branch_name, "[^%a]%a+-%d+")
					if task_id_start ~= nil then
						return branch_name:sub(1, task_id_end)
					end

					return branch_name:sub(1, 50)
				end,
			},
		},
		lualine_y = { require("auto-session.lib").current_session_name },
	},
})
