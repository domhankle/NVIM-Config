return {
  'neovim/nvim-lspconfig',
  config = function()
    local lsp = require'lspconfig'

    lsp.clangd.setup{
      capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

  end
}
