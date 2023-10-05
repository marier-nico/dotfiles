vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted down" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system" })

vim.keymap.set("n", "<C-h>", "<C-W><C-H>", { desc = "Navigate to left split" })
vim.keymap.set("n", "<C-j>", "<C-W><C-J>", { desc = "Navigate to split below" })
vim.keymap.set("n", "<C-k>", "<C-W><C-K>", { desc = "Navigate to split above" })
vim.keymap.set("n", "<C-l>", "<C-W><C-L>", { desc = "Navigate to right split" })

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

-- highlight word under cursor
vim.keymap.set("n", "<F8>", ":let @/='\\<<C-R>=expand(\"<cword>\")<CR>\\>'<CR>:set hls<CR>")

-- manage search highlight
-- https://www.reddit.com/r/neovim/comments/zc720y/comment/iyvcdf0/?utm_source=share&utm_medium=web2x&context=3
vim.on_key(function(char)
	if vim.fn.mode() == "n" then
		local new_hlsearch = vim.tbl_contains({ "<CR>", "n", "N", "*", "#", "?", "/" }, vim.fn.keytrans(char))
		if vim.opt.hlsearch:get() ~= new_hlsearch then
			vim.opt.hlsearch = new_hlsearch
		end
	end
end, vim.api.nvim_create_namespace("auto_hlsearch"))
