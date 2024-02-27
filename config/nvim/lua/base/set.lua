vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Speed up scrolling
vim.opt.ttyfast = true
vim.g.ttyscroll = 3
vim.opt.lazyredraw = true

-- Disable syntax for very long lines
vim.opt.synmaxcol = 2048

vim.g.mapleader = " "
vim.opt.clipboard:append({ "unnamedplus" }) -- copy to system clipboard

-- Disable default file browser
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Whichkey
vim.opt.timeout = true
vim.opt.timeoutlen = 300
