
require('lualine').setup({
	options = {
    theme = "catppuccin",
		section_separators = { left = ' ', right = ' ' },
	},
	sections = {
        lualine_a = { { "mode", upper = true } },
        lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
        lualine_c = { { "filename", file_status = true, path = 1 } },
        lualine_x = {
          "diagnostics",
          "diff",
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = { fg = "ff9e64" },
          },
        },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
}})
require('gruvbox').setup({
	italic = { strings = false }
})
 require("nvim-treesitter.configs").setup({
	ensure_installed = {
        "bash",
        "css",
        "go",
        "gomod",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "nix",
        "query",
        "rust",
        "typescript",
        "vim",
        "yaml",
        "org",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "org" },
      },
      indent = {
        enable = true,
      },
 })
require("transparent").setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {}, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.tsserver.setup {}
lspconfig.gopls.setup{}
lspconfig.html.setup{}
lspconfig.emmet_ls.setup{}
lspconfig.jsonls.setup{}
lspconfig.tailwindcss.setup{
	filetypes = { "html",  "javascriptreact", "typescriptreact"},
}
lspconfig.pyright.setup {}

