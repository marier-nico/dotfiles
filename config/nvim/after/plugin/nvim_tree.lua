local api = require("nvim-tree.api")

require("nvim-tree").setup({
	view = { adaptive_size = true },
	on_attach = function(bufnr)
		-- default mappings
		api.config.mappings.default_on_attach(bufnr)
	end,
})

vim.keymap.set("n", "<leader>e", function()
	api.tree.toggle({ find_file = true, focus = true })
end, { desc = "Toggle file tree" })

-- Magic auto close by @marvinth01
vim.api.nvim_create_autocmd("QuitPre", {
	callback = function()
		local tree_wins = {}
		local floating_wins = {}
		local wins = vim.api.nvim_list_wins()
		for _, w in ipairs(wins) do
			local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
			if bufname:match("NvimTree_") ~= nil then
				table.insert(tree_wins, w)
			end
			if vim.api.nvim_win_get_config(w).relative ~= "" then
				table.insert(floating_wins, w)
			end
		end
		if 1 == #wins - #floating_wins - #tree_wins then
			-- Should quit, so we close all invalid windows.
			for _, w in ipairs(tree_wins) do
				vim.api.nvim_win_close(w, true)
			end
		end
	end,
})
