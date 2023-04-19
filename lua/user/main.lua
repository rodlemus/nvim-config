local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
  {'folke/tokyonight.nvim'},
  { "catppuccin/nvim", name = "catppuccin" },
  {'nvim-lualine/lualine.nvim'},
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-refactor",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-lua/popup.nvim" },
			{ "nvim-telescope/telescope-fzy-native.nvim" },
			{ "kyazdani42/nvim-web-devicons" },
			{ "nvim-telescope/telescope-file-browser.nvim" },
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				dependencies = {
					"junegunn/fzf.vim",
					dependencies = {
						{
							"tpope/vim-dispatch",
							cmd = { "Make", "Dispatch" },
						},
						{
							"junegunn/fzf",
							build = ":call fzf#install()",
						}
					},
				},
			},
		},
	},
	{'xiyaowong/transparent.nvim'},
  {"neovim/nvim-lspconfig"},
	{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-git",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind-nvim",
    { "L3MON4D3/LuaSnip", version = "v1.*" },
    "windwp/nvim-autopairs",
    "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  event = "VeryLazy",
}
})

