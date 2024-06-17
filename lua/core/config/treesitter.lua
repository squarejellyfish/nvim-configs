require("nvim-treesitter.configs").setup {
    -- ensure_installed = {"vim", "json", "python", "markdown"},

    highlight = {
        enable = true,
    },
}

require 'nvim-treesitter.install'.compilers = { "gcc", "cc", "clang"}
