return {
    "numToStr/Comment.nvim",
    config = function()
        local km = vim.keymap

        km.set("n", "<leader>/", function()
            require("Comment.api").toggle.linewise.current()
        end)
        km.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
    end
}
