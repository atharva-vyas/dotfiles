return {
	'L3MON4D3/LuaSnip',
	dependencies = {
		{ 'saadparwaiz1/cmp_luasnip' },
		{ "rafamadriz/friendly-snippets" }
	},
	config = function()
		-- Register the snippet outside of cmp.setup.
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local extras = require("luasnip.extras")
		local rep = extras.rep



		-- https://github.com/rafamadriz/friendly-snippets?tab=readme-ov-file#add-snippets-from-a-framework-to-a-filetype
		-- https://github.com/rafamadriz/friendly-snippets/tree/main/snippets
		require("luasnip.loaders.from_vscode").lazy_load()
		ls.filetype_extend("javascript", { "react", "javascript" })



		-- forward
		vim.keymap.set({ "i", "s" }, "<A-i>", function()
			-- vim.keymap.set({ "i", "s" }, "<A-n>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true })

		-- backward
		vim.keymap.set({ "i", "s" }, "<A-o>", function()
			-- vim.keymap.set({ "i", "s" }, "<M-N>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { silent = true })


		-- Manual snippet example
		-- ls.add_snippets("javascript", {
		-- 	s("log", {
		-- 		t('console.log('), i(1), t(')')
		-- 	}),
		--
		-- 	s("map", {
		-- 		i(1), t('.map(('), i(2), t(') => {'),
		-- 		t({ '', '\t<div key={' }), rep(1), t('.indexOf('), rep(2), t(')}>'),
		-- 		t({ '', '\t\t' }), i(3),
		-- 		t({ '', '\t</div>' }),
		-- 		t({ '', '})'})
		-- 	}),
		--
		-- })
	end
}
