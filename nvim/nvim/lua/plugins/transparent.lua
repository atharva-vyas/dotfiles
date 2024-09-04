-- :TransparentEnable
-- :TransparentDisable
-- :TransparentToggle
return {
	'xiyaowong/transparent.nvim',
	-- Optional, you don't have to run setup.
	config = function()
		require("transparent").setup({
			-- table: default groups
			groups = {
				'Normal',
				'NormalNC',
				'Comment',
				'Constant',
				'Special',
				'Identifier',
				'Statement',
				'PreProc',
				'Type',
				'Underlined',
				'Todo',
				'String',
				'Function',
				'Conditional',
				'Repeat',
				'Operator',
				'Structure',
				'LineNr',
				'NonText',
				'SignColumn',
				'CursorLine',
				'CursorLineNr',
				'StatusLine',
				'StatusLineNC',
				'EndOfBuffer',
			},
			-- table: additional groups that should be cleared
			extra_groups = {},
			-- table: groups you don't want to clear
			exclude_groups = {
				'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC', 'EndOfBuffer', 'SignColumn'
			},
			-- function: code to be executed after highlight groups are cleared
			-- Also the user event "TransparentClear" will be triggered
			on_clear = function() end,
		})
		-- vim.api.nvim_set_hl(0, "VertSplit", { bg = "#3a3a3a" })
		vim.api.nvim_set_hl(0, "VertSplit", { fg = "#FFFFFF", bg = "#FFFFFF" })
	end
}
