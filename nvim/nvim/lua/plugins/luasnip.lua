return {
	'L3MON4D3/LuaSnip',
	dependencies = {
		{ 'saadparwaiz1/cmp_luasnip' },
	},
	config = function()
		-- Register the snippet outside of cmp.setup.
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local extras = require("luasnip.extras")
		local rep = extras.rep

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

		ls.add_snippets("javascript", {
			s("log", {
				t('console.log('), i(1), t(')')
			}),

			-- s(".map", {
			-- 	t('.map(('), i(1), t(') => {'),
			-- 	t('    <li key={'), i(2), t('.indexOf('), rep(1), t(')}> {'), rep(1), t('} </li>'),
			-- 	t('})')
			-- }),

			s("map", {
				i(1), t('.map(('), i(2), t(') => {'),
				t({ '', '\t<div key={' }), rep(1), t('.indexOf('), rep(2), t(')}>'),
				t({ '', '\t\t' }), i(3),
				t({ '', '\t</div>' }),
				t({ '', '})'})
			}),

		})
	end
}
