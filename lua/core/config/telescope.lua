local km = vim.keymap
local builtin = require("telescope.builtin")

km.set("n", "<leader>ff", builtin.find_files, {})
km.set("n", "<leader>fb", builtin.buffers, {})
km.set("n", "<leader>fg", builtin.live_grep, {})
km.set("n", "<leader>fz",  "<cmd> Telescope current_buffer_fuzzy_find <CR>")
km.set("n", "<leader>pt",  "<cmd> Telescope terms <CR>")
km.set("n", "<leader>td", "<cmd> Telescope lsp_definitions <CR>")
