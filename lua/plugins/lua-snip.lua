return {
	"L3MON4D3/LuaSnip",
	version = "v2.4",
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")

		-- keymaps
		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { silent = true })

		-- snippet aliases
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node

		-- ls.filetype_extend("js", { "jsx" })

		-- snippets
		ls.add_snippets("all", {
			s("af", {
				t("("),
				i(1, ""),
				t({ ") => {", "  " }),
				i(0),
				t({ "", "}" }),
			}),
			s("aff", {
				t("const "),
				i(1, "name"),
				t(" = "),
				t("("),
				i(2, ""),
				t({ ") => {", "  " }),
				i(0),
				t({ "", "}" }),
			}),
			s("l", {
				t("console.log("),
				i(0),
				t(")"),
			}),
			s("ld", {
				t('console.log("[DEBUG] '),
				i(0),
				t('")'),
			}),
			s("if", {
				t("if("),
				i(1, "condition"),
				t({ "){", "  " }),
				i(0),
				t({ "", "}" }),
			}),
		})
	end,
}
