set completeopt=menu,menuone,noselect

lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'
  local lspkind = require('lspkind')

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      -- ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<Tab>'] = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp', max_item_count = 8 },
      { name = 'vsnip', max_item_count = 3 }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer', max_item_count = 3 },
      { name = 'path', max_item_count = 2 },
      { name = 'calc', max_item_count = 1 },
    }),
    enabled = function()
      -- disable completion in comments
      local context = require 'cmp.config.context'
      -- keep command mode completion enabled when cursor is in a comment
      if vim.api.nvim_get_mode().mode == 'c' then
        return true
      else
        return not context.in_treesitter_capture("comment") 
          and not context.in_syntax_group("Comment")
      end
    end,
    view = {                                                        
        entries = {name = 'custom', selection_order = 'near_cursor' } 
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
            })
        }),
    }
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
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
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Setup language servers
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['rust_analyzer'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities
  }
EOF
