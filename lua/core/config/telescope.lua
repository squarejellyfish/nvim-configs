local km = vim.keymap

km.set("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
km.set("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
km.set("n", "<leader>fz",  "<cmd> Telescope current_buffer_fuzzy_find <CR>")
km.set("n", "<leader>pt",  "<cmd> Telescope terms <CR>")
km.set("n", "<leader>td", "<cmd> Telescope lsp_definitions <CR>")
