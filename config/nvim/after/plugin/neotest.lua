local neotest = require("neotest")
local jest_util = require("neotest-jest.jest-util")
local util = require("neotest-jest.util")

neotest.setup({
	discovery = {
		enable = false,
	},
	adapters = {
		require("neotest-jest")({
			jestCommand = "yarn jest",
			-- jestConfigFile = function()
			-- 	local dot_git_path = vim.fn.finddir(".git", ".;")
			-- 	local full_git_path = vim.fn.fnamemodify(dot_git_path, ":h")
			-- 	local default_config = jest_util.getJestConfig(full_git_path)
			--
			-- 	if default_config then
			-- 		return default_config
			-- 	end
			--
			-- 	return util.path.join(full_git_path, "jest.integration.config.cjs")
			-- end,
			jest_test_discovery = true,
		}),
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
	neotest.output.open({ enter = true, auto_close = true })
end, { desc = "Open test output" })
