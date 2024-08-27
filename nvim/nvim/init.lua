vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.cmd.set "number"
vim.cmd.set "cursorline"
vim.cmd.set "shiftwidth=4"
vim.cmd.set "tabstop=4"

-- vim.cmd.nmap "j <Plug>(accelerated_jk_gj)"
-- vim.cmd.nmap "k <Plug>(accelerated_jk_gk)"

-- share clip board between yank and system
vim.opt.clipboard = "unnamedplus"
-- disables native jukit shortcuts
vim.g.jukit_mappings = 0
-- uses nvterm for jukit output
vim.g.jukit_terminal = "nvimterm"
-- vim.g.jukit_mappings_ext_enabled = {"py", "ipynb"}



-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)




-- Setup lazy.nvim
require("lazy").setup({
	spec = "plugins",

	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	-- install = { colorscheme = { "habamax" } },
	install = { colorscheme = { "carbonfox" } },

	-- automatically check for plugin updates
	checker = { enabled = true },
})

require("vim-options")
