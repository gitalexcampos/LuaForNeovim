return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			-- follow latest release.
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		local lspkind = require("lspkind")

		local source_mapping = {
			buffer = "◉ Buffer",
			nvim_lsp = " LSP",
			path = "󰴠 Path",
			luasnip = " LuaSnip",
		}

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<A-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<A-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<A-b>"] = cmp.mapping.scroll_docs(-4),
				["<A-f>"] = cmp.mapping.scroll_docs(4),
				["<A-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<A-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),

			-- configure lspkind for vs-code like pictograms in completion menu
			formatting = {
				format = function(entry, vim_item)
					vim_item.kind = lspkind.presets.default[vim_item.kind]
					local menu = source_mapping[entry.source.name]
					if entry.source.name == "cmp_tabnine" then
						if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
							menu = entry.completion_item.data.detail .. " " .. menu
						end
						vim_item.kind = ""
					end
					vim_item.menu = menu
					return vim_item
				end,
			},
		})
	end,
}
