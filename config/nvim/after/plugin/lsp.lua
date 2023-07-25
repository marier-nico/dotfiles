-- TODO: Avoid showing snippets by default? Maybe disable buffer autocomplete? Both are pretty noisy
-- todo: No highlighting from the git commit view (for the diff)
-- todo: goto tests / jest snippets / run tests
-- todo: alacritty
-- todo: eslint_d, prettierd (with mason, but can'd use in ensure_installed?)
-- todo: add vimwiki and create bindings to open a 'tasks' and 'today' pages, maybe with a function to create today with the date if it doesn't exist,
--       and add a keybind to go to the last day's entry (like doing it on Monday would take you to Friday, to easily see what happened on the last work day)
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
		["<C-f>"] = cmp.mapping.scroll_docs(5),
		["<C-u>"] = cmp.mapping.scroll_docs(-5),

		["<Tab>"] = cmp.mapping.confirm({ select = true }),
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
local lsp_attach = function(_client, bufnr)
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
	end, opts, {desc="Show hover info"})
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_next()
	end, opts, {desc="Next diagnostic"})
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_prev()
	end, opts, {desc="Previous diagnostic"})
	vim.keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts, {desc="LSP code action"})
	vim.keymap.set("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, opts, {desc="LSP references"})
	vim.keymap.set("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end, opts, {desc="LSP rename"})
	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format()
	end, opts, {desc="LSP format"})
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)
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
		"eslint",
		"pylsp",
		"rust_analyzer",
		"tsserver",
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
