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

