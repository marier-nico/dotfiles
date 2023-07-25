local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc="Find files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc="Live grep"})
vim.keymap.set('n', 'gr', builtin.lsp_references, {desc="LSP references"})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {desc="LSP definitions"})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {desc="LSP implementations"})
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {desc="LSP diagnostics"})


require('telescope').load_extension('fzf')
require("telescope").load_extension('harpoon')