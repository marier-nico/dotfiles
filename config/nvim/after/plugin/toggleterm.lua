require("toggleterm").setup({
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_terminals = true,
	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	persist_size = true,
	persist_mode = false,
	direction = "float",
	close_on_exit = true,
	float_opts = {
		border = "curved",
	},
})
