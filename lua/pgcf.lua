require'nvim-treesitter.configs'.setup {
    -- ensure_installed can be "all" or a list of languages { "python", "javascript" }
    ensure_installed = {"python","json","lua","yaml","cpp","cmake","c","markdown","html","go","css","javascript","typescript","vim","bash","git_config","git_rebase","gitcommit","gitignore","help","markdown_inline"},

    highlight = { -- enable highlighting for all file types
      enable = true, -- you can also use a table with list of langs here (e.g. { "python", "javascript" })
    },
}




require("nvim-autopairs").setup()
require 'nvim-lastplace'.setup()
-- Set barbar's options
-- Require and call setup function somewhere in your init.lua
require 'bufferline'.setup {
    auto_hide = true,
    tabpages = true,
    closable = true,
    clickable = true,
    --icons = true,
    insert_at_end = false,
    insert_at_start = false,
    maximum_padding = 1,
    minimum_padding = 1,
    maximum_length = 30,
    no_name_title = nil,
}

--require('feline').setup()
require('feline_one_monokai')
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})



--[[
vim.g.syntastic_cpp_checkers = 'cpplint'
vim.g.syntastic_c_checkers = 'cpplint'
vim.g.syntastic_cpp_cpplint_exec = 'cpplint'
-- The following two lines are optional. Configure it to your liking!
vim.g.syntastic_check_on_open = 1
vim.g.syntastic_check_on_wq = 0
]]
--
local status, bufferline = pcall(require, "bufferline")
if not status then
    print("ERROR bufferline")
    return
end

--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('code_runner').setup({
    -- put here the commands by filetype
    filetype = {
        python = "python3 -u",
        javascript = "node",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        bash = "bash",
        go = "go run"
    },
})
require('lint').linters_by_ft = {
    python = { }, cpp = {'cppcheck', 'cpplint' }, lua = { 'luacheck' },
    json = { 'jsonlint' }, markdown = { 'markdownlint' }, yaml = { 'yamllint' }, go = { 'golangcilint' },cmake={'cmakelint'},git={'gitlint'}
}
