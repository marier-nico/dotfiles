require("typescript-tools").setup({
	settings = {
		tsserver_file_preferences = {
			importModuleSpecifierPreference = "relative",
			importModuleSpecifierEnding = "minimal",
		},
		tsserver_plugins = {
			"@styled/typescript-styled-plugin",
		},
	},
})
