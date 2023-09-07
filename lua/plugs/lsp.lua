require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "pylsp",
        "lua_ls",
        "clangd",
        "tsserver",
        "html"
    }
})


require('lspconfig.ui.windows').default_options.border = 'single';

local on_attach = function(_, bufnr)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()


-- language specific stuff
require("lspconfig")["pylsp"].setup {on_attach = on_attach, capabilities = capabilities}

require("lspconfig")["lua_ls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"},
      },
    },
  },
}

require("lspconfig")["clangd"].setup {on_attach = on_attach, capabilities = capabilities}

require("lspconfig")["tsserver"].setup {on_attach = on_attach, capabilities = capabilities}


