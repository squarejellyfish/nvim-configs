return {
    "nvim-telescope/telescope.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    -- version = "0.1.4", 
    config = function()
        local km = vim.keymap
        local builtin = require("telescope.builtin")

        km.set("n", "<leader>ff", builtin.find_files, { desc = "telescope find files" })
        km.set("n", "<leader>fb", builtin.buffers, { desc = "telescope find buffers" })
        km.set("n", "<leader>fg", builtin.live_grep, { desc = "telescope live grep" })
        km.set("n", "<leader>km", builtin.keymaps, { desc = "telescope find keymaps" })
        km.set("n", "<leader>cm", builtin.commands, { desc = "telescope find commands" })
        km.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "telescope current_buffer_fuzzy_find" })
    end
}
