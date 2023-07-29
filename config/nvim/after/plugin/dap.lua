local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = dapui.open
dap.listeners.before.event_terminated["dapui_config"] = dapui.close
dap.listeners.before.event_exited["dapui_config"] = dapui.close

vim.keymap.set("n", "<leader>dtb", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debug continue" })
vim.keymap.set("n", "<leader>dso", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<leader>dsi", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Open repl" })
