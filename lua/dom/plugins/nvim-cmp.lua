return {
  'hrsh7th/nvim-cmp',
  config = function()
    local cmp = require'cmp'

    cmp.setup({
      expand = function(args)
	require('luasnip').lsp_expand(args.body)
      end
    })
  end
}
