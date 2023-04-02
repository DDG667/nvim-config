require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
    use 'windwp/nvim-autopairs'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'feline-nvim/feline.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'ethanholz/nvim-lastplace'
    use 'romgrk/barbar.nvim'
    use 'p00f/nvim-ts-rainbow'
    use 'neovim/nvim-lspconfig'
    use 'L3MON4D3/LuaSnip'
    use 'williamboman/mason.nvim'
    use 'onsails/lspkind.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'jghauser/mkdir.nvim'
    use 'mfussenegger/nvim-lint'
    use 'mhartington/formatter.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use { "hrsh7th/cmp-path", after = "nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" }
    use { "hrsh7th/cmp-buffer", after = "nvim-cmp" }
    --use { "hrsh7th/cmp-omni", after = "nvim-cmp" }
    use { 'hrsh7th/cmp-nvim-lsp-signature-help', after = "nvim-cmp" }
    use { 'saadparwaiz1/cmp_luasnip', after = "nvim-cmp" }
    use { "lukas-reineke/cmp-under-comparator", after = "nvim-cmp" }
    use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
    use {
        'gelguy/wilder.nvim', config = function()
        local wilder = require('wilder')
        wilder.setup({ modes = { ':', '/', '?' } })
        wilder.set_option('renderer', wilder.popupmenu_renderer({
            pumblend = 20,
        }))
        wilder.set_option('renderer', wilder.popupmenu_renderer({
            -- highlighter applies highlighting to the candidates
            highlighter = wilder.basic_highlighter(),
        }))
        wilder.set_option('renderer', wilder.popupmenu_renderer(
            wilder.popupmenu_border_theme({
                highlights = {
                    border = 'Normal', -- highlight to use for the border
                },
                -- 'single', 'double', 'rounded' or 'solid'
                -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
                border = 'rounded',
            })
        ))
        wilder.set_option('renderer', wilder.popupmenu_renderer({
            highlighter = wilder.basic_highlighter(),
            left = { ' ', wilder.popupmenu_devicons() },
            right = { ' ', wilder.popupmenu_scrollbar() },
        }))
    end
    }
    use {
        'Kasama/nvim-custom-diagnostic-highlight',
        config = function()
            require('nvim-custom-diagnostic-highlight').setup {}
        end
    }
    --use {'neoclide/coc.nvim', branch = 'release'}
end)
vim.g.python_highlight_all = 1
--[[
vim.g.cpp_posix_standard=1
vim.g.cpp_class_decl_highlight =1
vim.g.cpp_member_variable_highlight=1
vim.g.cpp_class_scope_highlight=1
vim.g.cpp_experimental_template_highlight=1
vim.g.cpp_concepts_highlight=1
vim.cpp_highlight_all=1
]]
--

require('pgcf')
require('lsp')
--require('a')
--require('feline_one_monokai')
