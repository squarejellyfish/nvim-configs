local km = vim.keymap
local builtin = require("telescope.builtin")

km.set("n", "<leader>ff", builtin.find_files)
km.set("n", "<leader>fb", builtin.buffers)
km.set("n", "<leader>fg", builtin.live_grep)
km.set("n", "<leader>km", builtin.keymaps)
km.set("n", "<leader>cm", builtin.commands)
km.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find)
