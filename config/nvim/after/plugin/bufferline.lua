local bufferline = require("bufferline")
bufferline.setup({
	highlights = require("catppuccin.groups.integrations.bufferline").get(),
})

vim.keymap.set("n", "[b", ":BufferLineCyclePrev<CR>", { desc = "Cycle previous buffer" })
vim.keymap.set("n", "]b", ":BufferLineCycleNext<CR>", { desc = "Cycle next buffer" })

vim.keymap.set("n", "<leader>bc]", ":BufferLineCloseRight<CR>", { desc = "Close buffers right" })
vim.keymap.set("n", "<leader>bc[", ":BufferLineCloseLeft<CR>", { desc = "Close buffers left" })
vim.keymap.set("n", "<leader>bco", ":BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
vim.keymap.set("n", "<leader>bw", ":w<CR>:bdelete<CR>", { desc = "Save and close current buffer" })
vim.keymap.set("n", "<leader>bq", ":bdelete<CR>", { desc = "Close current buffer" })
