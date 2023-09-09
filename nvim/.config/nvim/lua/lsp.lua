local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- lsp keymapings
local on_attach = function(client,bufnr) 
        vim.keymap.set("n","K",vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n","gd",vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n","gD",vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n","gi",vim.lsp.buf.implementation, {buffer=0})
        vim.keymap.set("n","<space>oD",vim.diagnostic.open_float, {buffer=0})
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {buffer=0})
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {buffer=0})
        -- format on save
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = vim.api.nvim_create_augroup("Format", { clear = true }),
              buffer = bufnr,
              callback = function() vim.lsp.buf.formatting_seq_sync() end
            })
        end 
end

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

