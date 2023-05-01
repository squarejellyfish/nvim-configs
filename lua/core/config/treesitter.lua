require("nvim-treesitter.configs").setup {
    ensure_installed = {"c", "vim", "lua", "json", "python", "markdown", "cpp" },

    highlight = {
        enable = true,
    },
}
