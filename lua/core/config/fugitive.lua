local km = vim.keymap
km.set("n", "<leader>gs", vim.cmd.Git)
km.set("n", "<leader>ga", ":Git add ")
km.set("n", "<leader>gc", ":Git commit<CR>")
km.set("n", "<leader>gp", ":Git push origin master<CR>")
km.set("n", "<leader>gd", ":Git diff<CR>")
