vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted down" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["wy]], { desc = "Yank to w register" })
vim.keymap.set("n", "<leader>Y", [["wY]], { desc = "Yank line to w register" })
vim.keymap.set("n", "<leader>p", [["wp]], { desc = "Paste line from w register" })

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

-- start search at current occurrence
vim.keymap.set("n", "*", "*N", { desc = "Search word under cursor" })

-- manage search highlight
local manual_override = false

vim.keymap.set("n", "<leader>*", function()
	if manual_override then
		vim.opt.hlsearch = false
	else
		vim.api.nvim_input("*")
		vim.opt.hlsearch = true
	end

	manual_override = not manual_override
end, { desc = "Search word & highlight" })

-- https://www.reddit.com/r/neovim/comments/zc720y/comment/iyvcdf0/?utm_source=share&utm_medium=web2x&context=3
vim.on_key(function(char)
	if vim.fn.mode() == "n" then
		local new_hlsearch = vim.tbl_contains({ "<CR>", "n", "N", "*", "#", "?", "/" }, vim.fn.keytrans(char))
		if vim.opt.hlsearch:get() ~= new_hlsearch and not manual_override then
			vim.opt.hlsearch = new_hlsearch
		end
	end
end, vim.api.nvim_create_namespace("auto_hlsearch"))

vim.api.nvim_create_autocmd("FileType", {
	pattern = "typescript,typescriptreact",
	command = "compiler typescript",
})
vim.cmd("autocmd QuickFixCmdPost [^l]* nested cwindow")
vim.cmd("autocmd QuickFixCmdPost    l* nested lwindow")

-- toggle quickfix window
vim.keymap.set("n", "<leader>qt", function()
	local quickfix_windows = {}
	for k, v in pairs(vim.fn.getwininfo()) do
		if v["quickfix"] == 1 then
			quickfix_windows[k] = v
		end
	end

	if next(quickfix_windows) == nil then
		vim.cmd("copen")
	else
		vim.cmd("cclose")
	end
end, { desc = "Toggle quickfix window" })
