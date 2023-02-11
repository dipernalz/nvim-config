-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local capabilities
local lspconfig = require("lspconfig")

-- css
capabilities = vim.lsp.protocol.make_client_capabilities()
lspconfig.cssls.setup({
    capabilities = capabilities,
    commands = {
        Format = {
            function()
                vim.cmd(":Prettier")
            end,
        },
    },
})

-- haskell
capabilities = vim.lsp.protocol.make_client_capabilities()
lspconfig.hls.setup({
    capabilities = capabilities,
    settings = {
        haskell = {
            hlintOn = true,
            -- formattingProvider = "fourmolu",
        },
    },
    commands = {
        Format = {
            function()
                vim.cmd(":%!stylish-haskell")
            end,
        },
    },
})

-- html
capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.html.setup({
    capabilities = capabilities,
    commands = {
        Format = {
            function()
                vim.cmd(":Prettier")
            end,
        },
    },
})

-- javascript
capabilities = vim.lsp.protocol.make_client_capabilities()
lspconfig.eslint.setup({
    capabilities = capabilities,
    commands = {
        Format = {
            function()
                vim.cmd(":Prettier")
            end,
        },
    },
})

-- lua
capabilities = vim.lsp.protocol.make_client_capabilities()
lspconfig.sumneko_lua.setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use", "require" },
            },
        },
    },
    commands = {
        Format = {
            function()
                require("stylua-nvim").format_file()
            end,
        },
    },
})

-- python
capabilities = vim.lsp.protocol.make_client_capabilities()
lspconfig.pyright.setup({
    capabilities = capabilities,
    commands = {
        Format = {
            function()
                vim.cmd(":Black")
            end,
        },
    },
})

-- yaml
capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.yamlls.setup({
    capabilities = capabilities,
    commands = {
        Format = {
            function()
                vim.cmd(":Prettier")
            end,
        },
    },
})
