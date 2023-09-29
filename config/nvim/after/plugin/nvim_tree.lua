local api = require("nvim-tree.api")

require("nvim-tree").setup()
vim.keymap.set("n", "<leader>e", function()
	api.tree.toggle({ find_file = true, focus = true })
end, { desc = "Toggle file tree" })

-- Auto close
vim.api.nvim_create_autocmd("BufEnter", {
	nested = true,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
			vim.cmd("quit")
		end
	end,
})
