local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {})


require('telescope').load_extension('fzf')
require("telescope").load_extension('harpoon')