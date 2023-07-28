local api = require("nvim-tree.api")

require("nvim-tree").setup()
vim.keymap.set("n", "<leader>e", function()
	api.tree.toggle({ find_file = true, focus = true })
end, { desc = "Toggle file tree" })
