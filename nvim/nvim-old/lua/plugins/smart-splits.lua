return {
	'mrjones2014/smart-splits.nvim',
	config = function()
		-- Define a global variable to store the direction
		_G.smart_splits_direction = nil

		-- Function to display the current direction
		function HelloWorld()
			-- if _G.smart_splits_direction then
			-- 	print("Current direction: " .. _G.smart_splits_direction)
			-- else
			-- 	print("No direction set yet!")
			-- end
			--
			--
			--
			-- if _G.smart_splits_direction == "left" then
			-- 	print("left")
			-- elseif _G.smart_splits_direction == "right" then
			-- 	print("right")
			-- elseif _G.smart_splits_direction == "up" then
			-- 	print("up")
			-- elseif _G.smart_splits_direction == "down" then
			-- 	print("down")
			-- else
			-- 	print("No direction set yet!")
			-- end
		end

		-- Bind <leader>hw to the HelloWorld function
		vim.keymap.set('n', '<leader>hw', HelloWorld, { desc = 'Display current split direction' })

		require('smart-splits').setup({
			at_edge = function(ctx)
				print(ctx.direction)
			end,
		})


		-- local function send_tmux_command(cmd)
		-- 	local is_tmux = os.getenv("TMUX") ~= nil
		-- 	if is_tmux then
		-- 		cmd = cmd:gsub("'", "'\\''")
		-- 		os.execute(string.format("tmux %s", cmd))
		-- 	else
		-- 		print("Not running inside Tmux")
		-- 	end
		-- end
		--
		-- -- Example usage
		-- vim.api.nvim_create_user_command('TmuxCmd', function(opts)
		-- 	send_tmux_command(opts.args)
		-- end, { nargs = '+' })


		-- recommended mappings
		-- resizing splits
		-- these keymaps will also accept a range,
		-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
		vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
		vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
		vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
		vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
		-- moving between splits
		vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
		vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
		vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
		vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
		vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous)
		-- swapping buffers between windows
		vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
		vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
		vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
		vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)
	end
}
