require("packer").startup(function()
    use("wbthomason/packer.nvim")

    -- color scheme
    use("dracula/vim")

    -- package manager
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

    -- completion
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/vim-vsnip")

    -- buffer parser
    use("nvim-treesitter/nvim-treesitter")

    -- statusline
    use({
        "nvim-lualine/lualine.nvim",
        run = "yarn install",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    -- file explorer
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })

    -- commenting
    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })

    -- formatters
    use({ "ckipp01/stylua-nvim", run = "cargo install stylua" }) -- lua
    use("psf/black") -- python
    use({
        "prettier/vim-prettier",
        run = "yarn install",
        ft = { "css", "html", "javascript", "yaml" },
    }) -- web dev

    use("danilamihailov/beacon.nvim")
end)

vim.keymap.set("n", "<A-R>", ":PackerSync<CR>", { silent = true })

require("plugins.mason")
require("plugins.cmp")
require("plugins.lspconfig")
require("plugins.treesitter")
require("plugins.lualine")
require("plugins.tree")
