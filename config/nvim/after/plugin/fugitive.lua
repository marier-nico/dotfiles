vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- MAP
-- a: stage/unstage file
-- X: discard change
-- =: inline diff
-- cc: commit
-- ca: commit (amend)


-- Based off https://github.com/ThePrimeagen/init.lua/blob/249f3b14cc517202c80c6babd0f9ec548351ec71/after/plugin/fugitive.lua
local Custom_Fugitive = vim.api.nvim_create_augroup("Custom_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = Custom_Fugitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "<leader>psh", ":Git push -u origin HEAD", opts, {desc = "push -u origin HEAD"})
        vim.keymap.set("n", "<leader>pll", ":Git pull origin", opts, {desc = "pull origin"})
    end,
})