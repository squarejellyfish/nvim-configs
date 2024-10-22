return {
    -- the colorscheme should be available when starting Neovim
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd [[ colorscheme gruvbox ]]
        end
    },
    "nvim-tree/nvim-web-devicons",

    -- LSP shits
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        },
    },
    "neovim/nvim-lspconfig",
    "saadparwaiz1/cmp_luasnip",
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("config.null-ls")
        end,
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },
    {"akinsho/toggleterm.nvim",
        version = '*',
        config = function()
            require("toggleterm").setup()
        end,
    },
    "rafamadriz/friendly-snippets",
    {
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
        config = function()
            local km = vim.keymap
            km.set("n", "<leader>mp", ":MarkdownPreview<CR>")
            km.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>")
        end,
    },
    "christoomey/vim-tmux-navigator",
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end,
    },
    "simrat39/rust-tools.nvim",

    {
        "squarejellyfish/banner.nvim",
        -- dev = true,
        config = function ()
            require("banner").setup()
        end
    },
    {
        "mg979/vim-visual-multi",
    },
}
