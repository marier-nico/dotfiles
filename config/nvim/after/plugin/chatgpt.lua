require("chatgpt").setup({
	openai_params = {
		model = "gpt-4-1106-preview",
	},
	api_key_cmd = "security find-generic-password -w -a nmarier -s openai_api_key",
})

vim.keymap.set("n", "<leader>cc", function()
	vim.cmd("ChatGPT")
end, { desc = "ChatGPT" })

vim.keymap.set("n", "<leader>ck", function()
	vim.cmd("ChatGPTActAs")
end, { desc = "ChatGPT act as" })

vim.keymap.set({ "n", "v" }, "<leader>cg", function()
	vim.cmd("ChatGPTRun grammar_correction")
end, { desc = "Grammar correction" })

vim.keymap.set({ "n", "v" }, "<leader>ct", function()
	vim.cmd("ChatGPTRun translate")
end, { desc = "Translate" })

vim.keymap.set({ "n", "v" }, "<leader>cd", function()
	vim.cmd("ChatGPTRun docstring")
end, { desc = "Docstring" })

vim.keymap.set({ "n", "v" }, "<leader>ca", function()
	vim.cmd("ChatGPTRun add_tests")
end, { desc = "Add tests" })

vim.keymap.set({ "n", "v" }, "<leader>co", function()
	vim.cmd("ChatGPTRun optimize_code")
end, { desc = "Optimise code" })

vim.keymap.set({ "n", "v" }, "<leader>cs", function()
	vim.cmd("ChatGPTRun summarize")
end, { desc = "Summarize" })

vim.keymap.set({ "n", "v" }, "<leader>cf", function()
	vim.cmd("ChatGPTRun fix_bugs")
end, { desc = "Fix bugs" })

vim.keymap.set({ "n", "v" }, "<leader>cx", function()
	vim.cmd("ChatGPTRun explain_code")
end, { desc = "Explain code" })

vim.keymap.set({ "n", "v" }, "<leader>cl", function()
	vim.cmd("ChatGPTRun code_readability_analysis")
end, { desc = "Code readability analysis" })
