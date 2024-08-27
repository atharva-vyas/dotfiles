return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim"
	},
	config = function()
		-- shift + h to view hidden files
		vim.keymap.set('n', '<leader>n', ':Neotree reveal left<CR>', {})
		vim.keymap.set('n', '<leader>nn', ':Neotree toggle<CR>', {})
	end
}
