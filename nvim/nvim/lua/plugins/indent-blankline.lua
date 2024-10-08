return {
	"lukas-reineke/indent-blankline.nvim",
	-- main = "ibl",
	---@module "ibl"
	-- ---@type ibl.config
	-- opts = {},


	-- For all available options, take a look at `:help ibl.config`.
	config = function()
		-- require("ibl").setup()

		-- Shows an underline on the first line of the scope
		require("ibl").setup({
			scope = {
				show_start = true,
				show_end = true,
				show_exact_scope = true,
				highlight = { "Function", "Label" },
			},
			exclude = {
				filetypes = { "dashboard" },
			},
		})
	end
}
