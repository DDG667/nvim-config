local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "navarasu/onedark.nvim",              lazy = true },
    { "windwp/nvim-autopairs" },
    { "lukas-reineke/indent-blankline.nvim" },
    { "nvim-treesitter/nvim-treesitter",    dependencies = { "p00f/nvim-ts-rainbow" } },
    { "feline-nvim/feline.nvim" },
    { "nvim-tree/nvim-tree.lua" },
    { "kyazdani42/nvim-web-devicons" },
    { "ethanholz/nvim-lastplace" },
    { "romgrk/barbar.nvim" },
    { "neovim/nvim-lspconfig" },
    { "L3MON4D3/LuaSnip" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
    },
    { "onsails/lspkind.nvim" },
    { "glepnir/lspsaga.nvim" },
    { "mfussenegger/nvim-lint" },
    { "mhartington/formatter.nvim" },
    { "ray-x/lsp_signature.nvim" },
    { "jose-elias-alvarez/null-ls.nvim" },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "saadparwaiz1/cmp_luasnip",
            "lukas-reineke/cmp-under-comparator",
        },
    },
    { "CRAG666/code_runner.nvim", dependencies = "nvim-lua/plenary.nvim" },
    {
        "gelguy/wilder.nvim",
        event = "VeryLazy",
        config = function()
            local wilder = require("wilder")
            wilder.setup({ modes = { ":", "/", "?" } })
            wilder.set_option(
                "renderer",
                wilder.popupmenu_renderer({
                    pumblend = 20,
                })
            )
            wilder.set_option(
                "renderer",
                wilder.popupmenu_renderer({
                    -- highlighter applies highlighting to the candidates
                    highlighter = wilder.basic_highlighter(),
                })
            )
            wilder.set_option(
                "renderer",
                wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
                    highlights = {
                        border = "Normal", -- highlight to use for the border
                    },
                    -- "single", "double", "rounded" or "solid"
                    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
                    border = "rounded",
                }))
            )
            wilder.set_option(
                "renderer",
                wilder.popupmenu_renderer({
                    highlighter = wilder.basic_highlighter(),
                    left = { " ", wilder.popupmenu_devicons() },
                    right = { " ", wilder.popupmenu_scrollbar() },
                })
            )
        end,
    },
    {
        "Kasama/nvim-custom-diagnostic-highlight",
        config = function()
            require("nvim-custom-diagnostic-highlight").setup({})
        end,
    },
})

--require("pgcf")
--require("lsp")
