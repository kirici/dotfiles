-- Customize Treesitter

---@type LazySpec
return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = {
			"go",
			"just",
			"lua",
			"python",
			-- add more arguments for adding more treesitter parsers
		},
	},
}
