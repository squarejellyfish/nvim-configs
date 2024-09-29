return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function ()
        require("oil").setup({
            default_file_explorer = false,
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
        })

        -- Open parent dir in current window
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Oil open parent directory" })

        -- Open parent dir in floating window
        vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { desc = "Oil open parent directory" })
    end
}
