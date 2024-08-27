-- for help => https://www.youtube.com/watch?v=SxuwQJ0JHMU&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&index=4
return {
	'nvimtools/none-ls.nvim',
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup = ({
			sources = {
				null_ls.builtins.formatting.stylua,
			}
		})

		vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
	end
}
