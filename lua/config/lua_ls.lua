vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		".git",
	},
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			runtime = {
				version = "LuaJIT",
			},
			completion = { callSnippet = "Replace" },
			telemetry = { enable = false },
			workspace = {
				userThirdParty = true,
				checkThirdParty = false,
				library = {
					-- vim.env.VIMRUNTIME,
					"${3rd}/luv/library",
					"/home/vlad/projects/LuaAddons/cc-tweaked-documentation/library",
					-- unpack(vim.api.nvim_get_runtime_file("", true)),
				},
			},
		},
	},
})

vim.lsp.enable("lua_ls")
