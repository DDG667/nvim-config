require('lint').linters_by_ft = {
    python = { }, cpp = {'cppcheck', 'cpplint' }, lua = { 'luacheck' },
    json = { 'jsonlint' }, markdown = { 'markdownlint' }, yaml = { 'yamllint' }, go = { 'golangcilint' },cmake={'cmakelint'},git={'gitlint'}
}
