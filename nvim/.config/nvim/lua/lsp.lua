local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- lsp keymapings
local on_attach = function() 
        vim.keymap.set("n","K",vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n","gd",vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n","gD",vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n","gi",vim.lsp.buf.implementation, {buffer=0})
        vim.keymap.set("n","<space>oD",vim.diagnostic.open_float, {buffer=0})
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {buffer=0})
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {buffer=0})
end

require'lspconfig'.gopls.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}

require'lspconfig'.clangd.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}

require'lspconfig'.rust_analyzer.setup{
    on_attach=on_attach,
}

require'lspconfig'.tsserver.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}

require'lspconfig'.tailwindcss.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}

-- Set up rust rust-tools
--local rt = require("rust-tools")
--local cmd = {"rustup", "run", "stable", "rust-analyzer"}
--rt.setup({
--  server = {
--    cmd = cmd,
--    capabilities = capabilities,
--    on_attach = on_attach,
--  },
--})

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
})

