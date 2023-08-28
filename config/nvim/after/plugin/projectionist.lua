local jestUnitTestTemplate = { "describe('{basename}', () => {", "", "});" }

vim.g.projectionist_heuristics = {
	["*"] = {
		["src/*.ts"] = { alternate = { "src/{}.test.ts", "tests/unit/{}.test.ts" } },
		["src/*.test.ts"] = { alternate = "src/{}.ts", template = jestUnitTestTemplate },
		["tests/unit/*.test.ts"] = { alternate = "src/{}.ts", template = jestUnitTestTemplate },
	},
}

vim.keymap.set({ "n" }, "ga", ":A<CR>", { desc = "Goto alternate file" })
