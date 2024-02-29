require("typescript-tools").setup({})
local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "null_ls" },
		{ name = "path", max_item_count = 5 },
		{ name = "conventionalcommits", max_item_count = 5 },
		{ name = "buffer", max_item_count = 5 },
	},
	preselect = cmp.PreselectMode.Item,
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = {
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),

		-- scroll up and down in the completion documentation
		["<C-d>"] = cmp.mapping.scroll_docs(5),
		["<C-u>"] = cmp.mapping.scroll_docs(-5),

		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
	},
	formatting = {
		format = require("lspkind").cmp_format({
			mode = "symbol_text",
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},
})

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_attach = function(client, bufnr)
	vim.api.nvim_create_autocmd("CursorHold", {
		buffer = bufnr,
		callback = function()
			local opts = {
				focusable = false,
				close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
				border = "rounded",
				source = "always",
				prefix = " ",
				scope = "cursor",
			}
			vim.diagnostic.open_float(nil, opts)
		end,
	})

	local opts = { buffer = bufnr, remap = false }
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts, { desc = "Show hover info" })
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_next()
	end, opts, { desc = "Next diagnostic" })
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_prev()
	end, opts, { desc = "Previous diagnostic" })
	vim.keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts, { desc = "LSP code action" })
	vim.keymap.set("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end, opts, { desc = "LSP rename" })
	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format()
	end, opts, { desc = "LSP format" })
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)

	if client.name == "typescript-tools" then
		vim.keymap.set(
			"n",
			"<leader>lo",
			"<cmd>TSToolsOrganizeImports<cr>",
			{ buffer = bufnr, desc = "Organize Imports" }
		)
		vim.keymap.set("n", "<leader>lu", "<cmd>TSToolsRemoveUnused<cr>", { buffer = bufnr, desc = "Removed Unused" })
		vim.keymap.set("n", "<leader>lF", "<cmd>TSToolsFixAll<cr>", { buffer = bufnr, desc = "Fix All" })
		vim.keymap.set(
			"n",
			"<leader>lA",
			"<cmd>TSToolsAddMissingImports<cr>",
			{ buffer = bufnr, desc = "Add Missing Imports" }
		)
	end
end

require("mason").setup()
require("null-ls").setup({
	on_attach = lsp_attach,
})
require("mason-null-ls").setup({
	ensure_installed = {
		"prettierd",
		"eslint_d",
		"luacheck",
		"stylua",
	},
	handlers = {},
	automatic_installation = false,
	automatic_setup = true,
})
require("mason-lspconfig").setup({
	ensure_installed = {
		"pylsp",
		"rust_analyzer",
	},
})
require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = lsp_attach,
			capabilities = lsp_capabilities,
		})
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	callback = function()
		vim.lsp.buf.format({
			async = false,
			timeout_ms = 30000,
			filter = function(client)
				return client.name ~= "tsserver"
			end,
		})
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		lsp_attach(client, args.buf)
	end,
})

vim.keymap.set("n", "<leader>R", "<cmd>LspRestart<cr>", { buffer = 0, silent = true, desc = "LSP restart" })
