
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
        "php",
        "phpdoc",
        "query",
        "rust",
        "svelte",
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
