return {
	{
		'stevearc/oil.nvim',
		lazy = false,
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		-- Configuration for the floating window in oil.open_float
		config = function()
			require("oil").setup {
				keymaps = {
					["<ESC>"] = "actions.close",
				},
				float = {
					max_width = 80,
					preview_split = "below",
					win_options = {
						winblend = 0,
						winhighlight = "NormalFloat:Normal,FloatBorder:Normal",
					},
				},
				-- 		float = {
				-- 			-- Padding around the floating window
				-- 			padding = 50,
				-- 			max_width = 50,
				-- 			max_height = 50,
				-- 			border = "rounded",
				-- 			-- preview_split: Split direction: "auto", "left", "right", "above", "below".
				-- 			preview_split = "above",
				-- 			-- This is the config that will be passed to nvim_open_win.
				-- 			-- Change values here to customize the layout
				-- 			override = function(conf)
				-- 				return conf
				-- 			end,
				-- 		},
				-- 	}
				override = function(conf)
					return conf
				end,
			}
			vim.keymap.set("n", "-", require("oil").open_float, { desc = "Open parent directory in float" })
		end,
	}
}
