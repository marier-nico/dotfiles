local LARGE_BUFFER_THRESHOLD = 1024 * 1024
local aug = vim.api.nvim_create_augroup("buf_large", { clear = true })

vim.api.nvim_create_autocmd({ "BufReadPre" }, {
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()
		local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(bufnr))
		if ok and stats and (stats.size > LARGE_BUFFER_THRESHOLD) then
			vim.b.large_buf = true
			vim.cmd("syntax off")
			vim.opt_local.spell = false
			require("ibl").setup_buffer(bufnr, { enabled = false })
		else
			vim.b.large_buf = false
		end
	end,
	group = aug,
	pattern = "*",
})
