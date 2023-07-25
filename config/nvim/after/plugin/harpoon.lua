local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")

vim.keymap.set("n", "<leader>a", mark.add_file, {desc="Harpoon file"})
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, {desc="Harpoon ui"})

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, {desc="Navigate to harpoon file 1"})
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, {desc="Navigate to harpoon file 2"})
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, {desc="Navigate to harpoon file 3"})
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, {desc="Navigate to harpoon file 4"})
