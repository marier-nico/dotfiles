local api = require("nvim-tree.api")
local lib = require("nvim-tree.lib")

require("nvim-tree").setup({
	view = { adaptive_size = true },
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	actions = {
		open_file = {
			window_picker = {
				enable = true,
				picker = require("window-picker").pick_window,
			},
		},
	},
	on_attach = function(bufnr)
		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end

		local mappings = {
			["<CR>"] = { api.node.open.edit, "Open" },
			["o"] = {
				function()
					local node = lib.get_node_at_cursor()
					vim.fn.jobstart({ "open", node.absolute_path }, { detach = true })
				end,
				"System open",
			},
			["s"] = { api.node.open.vertical, "Open: Vertical Split" },
			["S"] = { api.node.open.horizontal, "Open: Horizontal Split" },
			["<C-t>"] = { api.node.open.tab, "Open: New Tab" },
			["e"] = { api.fs.rename_basename, "Rename: Basename" },
			["<C-r>"] = { api.fs.rename_sub, "Rename: Omit Filename" },
			["P"] = { api.node.navigate.parent, "Parent Directory" },
			["<BS>"] = { api.node.navigate.parent_close, "Close Directory" },
			["a"] = { api.fs.create, "Create" },
			["r"] = { api.fs.rename, "Rename" },
			["c"] = { api.fs.copy.node, "Copy" },
			["y"] = { api.fs.copy.filename, "Copy Name" },
			["Y"] = { api.fs.copy.relative_path, "Copy Relative Path" },
			["gy"] = { api.fs.copy.absolute_path, "Copy Absolute Path" },
			["p"] = { api.fs.paste, "Paste" },
			["x"] = { api.fs.cut, "Cut" },
			["m"] = { api.marks.toggle, "Toggle Bookmark" },
			["bmv"] = { api.marks.bulk.move, "Move Bookmarked" },
			["d"] = { api.fs.remove, "Delete" },
			["[c"] = { api.node.navigate.git.prev, "Prev Git" },
			["]c"] = { api.node.navigate.git.next, "Next Git" },
			["]e"] = { api.node.navigate.diagnostics.next, "Next Diagnostic" },
			["[e"] = { api.node.navigate.diagnostics.prev, "Prev Diagnostic" },
			["H"] = { api.tree.toggle_hidden_filter, "Toggle Dotfiles" },
			["I"] = { api.tree.toggle_gitignore_filter, "Toggle Git Ignore" },
			["J"] = { api.node.navigate.sibling.last, "Last Sibling" },
			["K"] = { api.node.navigate.sibling.first, "First Sibling" },
			["W"] = { api.tree.collapse_all, "Collapse" },
			["R"] = { api.tree.reload, "Refresh" },
			["g?"] = { api.tree.toggle_help, "Help" },
			["q"] = { api.tree.close, "Close" },
		}

		for keys, mapping in pairs(mappings) do
			vim.keymap.set("n", keys, mapping[1], opts(mapping[2]))
		end
	end,
})

vim.keymap.set("n", "<leader>e", function()
	api.tree.toggle({ find_file = true, focus = true })
end, { desc = "Toggle file tree" })

-- Magic auto close by @marvinth01
vim.api.nvim_create_autocmd("QuitPre", {
	callback = function()
		local tree_wins = {}
		local floating_wins = {}
		local wins = vim.api.nvim_list_wins()
		for _, w in ipairs(wins) do
			local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
			if bufname:match("NvimTree_") ~= nil then
				table.insert(tree_wins, w)
			end
			if vim.api.nvim_win_get_config(w).relative ~= "" then
				table.insert(floating_wins, w)
			end
		end
		if 1 == #wins - #floating_wins - #tree_wins then
			-- Should quit, so we close all invalid windows.
			for _, w in ipairs(tree_wins) do
				vim.api.nvim_win_close(w, true)
			end
		end
	end,
})
