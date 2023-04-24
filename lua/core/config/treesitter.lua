require("nvim-treesitter.configs").setup {
    ensure_installed = {"c", "vim", "lua", "json", "python", "markdown" },

    highlight = {
        enable = true,
    },
}
