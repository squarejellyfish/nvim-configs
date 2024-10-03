local telescope = require("telescope")
local telescopeConfig = require("telescope.config")

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

-- Keymaps
local km = vim.keymap
local builtin = require("telescope.builtin")

km.set("n", "<leader>ff", builtin.find_files, { desc = "telescope find files" })
km.set("n", "<leader>fb", builtin.buffers, { desc = "telescope find buffers" })
km.set("n", "<leader>fg", builtin.live_grep, { desc = "telescope live grep" })
km.set("n", "<leader>km", builtin.keymaps, { desc = "telescope find keymaps" })
km.set("n", "<leader>cm", builtin.commands, { desc = "telescope find commands" })
km.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "telescope current_buffer_fuzzy_find" })
km.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "telescope lsp_document_symbols" })

telescope.setup({
    pickers = {
        find_files = {
            find_command = { "rg", "--files", "--hidden", "-g", "!.git", "-g", "!.DS_Store" },
        },
    },
})
