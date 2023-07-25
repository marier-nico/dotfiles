vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted down" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search term" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search term" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void" })

vim.keymap.set("n", "<C-h>", "<C-W><C-H>", { desc = "Navigate to left split" })
vim.keymap.set("n", "<C-j>", "<C-W><C-J>", { desc = "Navigate to split below" })
vim.keymap.set("n", "<C-k>", "<C-W><C-K>", { desc = "Navigate to split above" })
vim.keymap.set("n", "<C-l>", "<C-W><C-L>", { desc = "Navigate to right split" })

vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace current word in file" }
)
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, { desc = "Source file" })
