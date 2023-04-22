require'nvim-treesitter.configs'.setup {
    ensure_installed = {"python","json","yaml","cpp","cmake","c","markdown","html","go","css","javascript","typescript","vim","bash","git_config","git_rebase","gitcommit","gitignore","markdown_inline"},

    highlight = { -- enable highlighting for all file types
      enable = true, -- you can also use a table with list of langs here (e.g. { "python", "javascript" })
    },
}
