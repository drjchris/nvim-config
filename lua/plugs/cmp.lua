local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),


  -- dissable completion for comments
      enabled = {function()
      -- disable completion in comments
      local context = require 'cmp.config.context'
      -- keep command mode completion enabled when cursor is in a comment
      if vim.api.nvim_get_mode().mode == 'c' then
        return true
      else
        return not context.in_treesitter_capture("comment")
          and not context.in_syntax_group("Comment")
      end
    end},

  sources = cmp.config.sources({
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    { name = 'snippy', keyword_lenght=4}, -- For snippy users.
    { name = 'nvim_lsp' }, -- For snippy users.
    { name = 'path' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for python
cmp.setup.filetype('python', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp', max_item_count = 2}, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    { name = 'snippy', keyword_lenght=4},
    { name = 'path' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
  }, {
    { name = 'buffer', max_item_count = 4},
  })
})


-- Set configuration for LUA
cmp.setup.filetype('lua', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    { name = 'path' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).

  }, {
    { name = 'buffer' },
  })
})


-- Set configuration for Quarto
cmp.setup.filetype('quarto', {
  sources = cmp.config.sources({
    { name = 'path' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    { name = 'snippy', keyword_lenght=4}

  }, {
    -- { name = 'buffer' },
  })
})


-- Set configuration for C
cmp.setup.filetype('c', {
  sources = cmp.config.sources({
    { name = 'path' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    { name = 'nvim_lsp', max_item_count=5},
    { name = 'snippy', keyword_lenght=4}

  }, {
    -- { name = 'buffer' },
  })
})

-- Set configuration for HTML
cmp.setup.filetype('html', {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'nvim_lsp', max_item_count=5},
    { name = 'snippy', keyword_lenght=4}

  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for js
cmp.setup.filetype('js', {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'nvim_lsp', max_item_count=5},
    { name = 'snippy', keyword_lenght=4}

  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for css
cmp.setup.filetype('css', {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'nvim_lsp', max_item_count=5},
    { name = 'snippy', keyword_lenght=4}

  }, {
    { name = 'buffer' },
  })
})







-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'cmdline' },
    { name = 'path' }
  }, {
  })
})

-- Set up lspconfig.
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--require('lspconfig')['lua_lsp'].setup {
--  capabilities = capabilities
--}



