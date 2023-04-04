require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "bash",
    "comment",
    "css",
    "diff",
    "dockerfile",
    "git_rebase",
    "gitattributes",
    "gitignore",
    "glimmer",
    "go",
    "gomod",
    "graphql",
    "hcl",
    "html",
    "http",
    "javascript",
    "jq",
    "jsdoc",
    "json",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "python",
    "regex",
    "rust",
    "sql",
    "terraform",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "yaml"
  },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}
