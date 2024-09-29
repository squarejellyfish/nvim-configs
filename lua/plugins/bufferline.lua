return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({})

        local km = vim.keymap
        km.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
        km.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
    end
}