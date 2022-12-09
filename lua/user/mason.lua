local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

local status_ok, masonLspConfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

masonLspConfig.setup({
	ensure_installed = {
		"sumneko_lua",
		"tsserver",
		"cssls",
		"jsonls",
		"prismals",
	},
})

masonLspConfig.setup_handlers({
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({})
	end,
})
