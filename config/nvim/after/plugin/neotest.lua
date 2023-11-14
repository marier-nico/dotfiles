local neotest = require("neotest")
neotest.setup({
	discovery = {
		enable = false,
	},
	adapters = {
		require("neotest-jest")({ jestCommand = "yarn jest", jest_test_discovery = true }),
	},
})

vim.keymap.set("n", "<leader>tr", function()
	neotest.run.run()
end, { desc = "Run nearest test" })

-- TODO: Conflicts with gitsigns (probably), required plugins are missing anyway
-- vim.keymap.set("n", "<leader>td", function()
-- 	neotest.run.run({ strategy = "dap" })
-- end, { desc = "Debug nearest test" })

vim.keymap.set("n", "<leader>tk", function()
	neotest.run.stop()
end, { desc = "Stop running test" })

vim.keymap.set("n", "<leader>ts", function()
	neotest.summary.toggle()
end, { desc = "Toggle test summary" })

vim.keymap.set("n", "<leader>to", function()
	neotest.output.open({ auto_close = true })
end, { desc = "Open test output" })
