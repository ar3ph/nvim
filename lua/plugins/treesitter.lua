return {
  'nvim-treesitter/nvim-treesitter', tag = "v0.9.3",
  lazy = false,
  build = ':TSUpdate',
  dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
	  textobjects = {
	      select = {
		  enable = true,
		  lookahead = true,
		  keymaps = {
		      ["af"] = "@function.outer",
		      ["if"] = "@function.inner",
		  },
	      },
	  },
	  -- enable syntax highlighting
	  highlight = {
	      enable = true,
	  },
	  -- enable indentation
	  indent = { enable = true },
	  -- enable autotagging (w/ nvim-ts-autotag plugin)
	  autotag = { enable = true },
	  -- ensure these language parsers are installed
	  ensure_installed = {
	      "json",
	      "python",
	      "ron",
	      "javascript",
	      "haskell",
	      "query",
	      "typescript",
	      "tsx",
	      "rust",
	      "zig",
	      "php",
	      "yaml",
	      "html",
	      "css",
	      "markdown",
	      "markdown_inline",
	      "bash",
	      "lua",
	      "vim",
	      "vimdoc",
	      "c",
	      "dockerfile",
	      "gitignore",
	      "astro",
	  },
	  -- auto install above language parsers
	  auto_install = false,
      })
  end
}
