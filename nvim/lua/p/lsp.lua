local lsp = require('lsp-zero').preset({
	manage_nvim_cmp = {
		set_sources = 'lsp',
		set_basic_mappings = true,
		set_extra_mappings = true,
		use_luasnip = true,
		set_format = true,
		documentation_window = true,
	}
})
lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({ 'tsserver', 'eslint' })

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	preselect = 'item',
	-- sources = {
	-- 	{ name = "copilot", group_index = 2 },
	-- },
	completion = {
		completeopt = 'menu,menuone,noinsert'
	},
	mapping = {
		['<Enter>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		},
		['<C-Space>'] = cmp.mapping.complete(),
	}
})
