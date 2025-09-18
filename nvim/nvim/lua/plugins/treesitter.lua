return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = { "lua", "javascript", "python", "html", "java", "dockerfile" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
