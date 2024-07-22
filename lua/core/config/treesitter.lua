require("nvim-treesitter.configs").setup {
    ensure_installed = {"c", "vim", "lua", "json", "python", "markdown", "cpp", "vimdoc", "query" },

    sync_isntall = false,
    highlight = {
        enable = true,
    },
}
