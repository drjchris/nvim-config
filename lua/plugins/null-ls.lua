return {
  {

    -- none-ls replaces and updates null-ls
    "nvimtools/none-ls.nvim",

    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({

        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.autopep8,
        },

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
    end,
  },
  {
    -- rust auto format on save
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}
