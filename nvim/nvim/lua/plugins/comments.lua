return {
	'numToStr/Comment.nvim',
	opts = {},
	dependencies = {
		'JoosepAlviste/nvim-ts-context-commentstring',
	},
	--
	-- https://github.com/JoosepAlviste/nvim-ts-context-commentstring/issues/82
	config = function()
		require('Comment').setup({
			pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
			require('ts_context_commentstring').setup {
				enable_autocmd = false,
				languages = {
					typescript = '// %s',
				},
			}
		})
		vim.g.skip_ts_context_commentstring_module = true
	end
}
