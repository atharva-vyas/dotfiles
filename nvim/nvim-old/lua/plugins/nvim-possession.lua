return {
	"gennaro-tedesco/nvim-possession",
	dependencies = {
		"ibhagwan/fzf-lua",
	},
	config = true,
	init = function()
		local possession = require("nvim-possession")
		vim.keymap.set("n", "<leader>sl", function()
			possession.list()
		end)
		vim.keymap.set("n", "<leader>sn", function()
			possession.new()
		end)
		vim.keymap.set("n", "<leader>su", function()
			possession.update()
		end)
		vim.keymap.set("n", "<leader>sd", function()
			possession.delete()
		end)


		require("nvim-possession").setup({
			-- sessions = {
			-- 	sessions_path = ... -- folder to look for sessions, must be a valid existing path
			-- 	sessions_variable = ... -- defines vim.g[sessions_variable] when a session is loaded
			-- 	sessions_icon = ... -- string: shows icon both in the prompt and in the statusline
			-- 	sessions_prompt = ... -- fzf prompt string
			-- },
			--
			autoload = false, -- whether to autoload sessions in the cwd at startup
			autosave = true, -- whether to autosave loaded sessions before quitting
			-- autoswitch = {
			-- 	enable = false, -- whether to enable autoswitch
			-- 	exclude_ft = {}, -- list of filetypes to exclude from autoswitch
			-- },
			--
			save_hook = function() -- callback, function to execute before saving a session
				vim.cmd('Neotree left')
				vim.cmd('Neotree close')
			end,

			-- -- useful to update or cleanup global variables for example
			post_hook = function() -- callback, function to execute after loading a session
				vim.cmd('Neotree close')
				vim.cmd('Neotree left')
				vim.cmd('wincmd l')
			end,
			-- -- useful to restore file trees, file managers or terminals
			-- -- function()
			-- --     require('FTerm').open()
			-- --     require('nvim-tree').toggle(false, true)
			-- -- end
			--
			fzf_winopts = {
				-- any valid fzf-lua winopts options, for instance
				width = 0.5,
				preview = {
					vertical = "right:30%"
				}
			}
		})
	end,
}
