return {
	"nvim-tree/nvim-tree.lua",
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup()

        vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
        vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>")
    end,
}
