require("yanky").setup({
	highlight = {
		on_put = true,
		on_yank = true,
		timer = 200,
	},
})

vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", { desc = "Paste after" })
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", { desc = "Paste before" })
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)", { desc = "GPaste after" })
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)", { desc = "GPaste before" })
vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleForward)", { desc = "Cycle pastes forward" })
vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleBackward)", { desc = "Cycle pastes backwards" })
