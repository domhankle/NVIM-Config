return {
  'hrsh7th/nvim-cmp',
  config = function()
    local cmp = require'cmp'
    local luasnip = require'luasnip'

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
	['<C-u>'] = cmp.mapping.scroll_docs(-4),
	['<C-b>'] = cmp.mapping.scroll_docs(4),
	['<C-o>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.abort(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),

	['<Tab>'] = cmp.mapping(function(fallback)
	  if cmp.visible() then
	    cmp.select_next_item()
	  elseif luasnip.expand_or_jumpable() then
	    luasnip.expand_or_jump()
	  else
	    fallback()
	  end
	end, {"i", "s"}),
   
	['<S-Tab>'] = cmp.mapping(function(fallback)
	  if cmp.visible() then
	    cmp.select_prev_item()
	  elseif luasnip.expand_or_jumpable(-1) then
	    luasnip.expand_or_jump(-1)
	  else
	    fallback()
	  end
	end, {"i", "s"}),
      }),

      snippet = {
	expand = function(args)
	  luasnip.lsp_expand(args.body)
	end,
      },
      sources = cmp.config.sources({
	{ name = 'nvim_lsp' },
	{ name = 'luasnip' },
      }, 
      {
	{ name = 'buffer' },
      })
    })

  end
}
