local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
    -- for python
    formatting.autopep8.with({
        filetypes = { "python"},
    }),
    -- for c
    formatting.clang_format.with({
      filetypes = { "c", "cpp", "h"},
    }),
    -- for HTML/XML, JS, and CSS
    formatting.prettierd.with({
      filetypes = { "html", "xml", "svg", "js", "css"},
    }),
}

null_ls.setup({
    sources = sources,

    -- format on save
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                    --vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,


})
