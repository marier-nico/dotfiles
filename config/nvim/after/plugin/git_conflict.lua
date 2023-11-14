vim.keymap.set("n", "<leader>gc", function()
	vim.cmd("GitConflictListQf")
end, { desc = "Add git conflicts to quickfix list" })
