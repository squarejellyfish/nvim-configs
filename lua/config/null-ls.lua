local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
    -- formatting.prettier,
    formatting.stylua.with({
        extra_args = {
            "--indent-width",
            "4",
            "--call-parentheses",
            "Always",
        },
    }),
    formatting.autopep8,
    formatting.clang_format.with({
        extra_args = {
            "--style",
            "{BasedOnStyle: LLVM, IndentWidth: 4, BreakBeforeBraces: Allman}",
        },
    }),
    lint.shellcheck,
}

null_ls.setup({
    debug = true,
    sources = sources,
})

