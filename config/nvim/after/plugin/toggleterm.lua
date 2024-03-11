local toggleterm = require("toggleterm")

local function set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.api.nvim_create_autocmd(
	"TermOpen",
	{ pattern = "term://*", callback = set_terminal_keymaps, desc = "Set terminal keymaps" }
)

vim.api.nvim_command("augroup terminal_setup | au!")
vim.api.nvim_command("autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i")
vim.api.nvim_command("augroup end")

toggleterm.setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	open_mapping = [[<C-<>]],
	hide_numbers = true,
	shade_terminals = true,
	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	persist_size = true,
	persist_mode = true,
	autochdir = true,
	direction = "horizontal",
	close_on_exit = true,
})

local trim_spaces = true
vim.keymap.set("v", "<leader>tl", function()
	toggleterm.send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })
end, { noremap = true, silent = true, desc = "Send visual selection to terminal" })
