-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "fish",
      "go",
      "lua",
      "python",
      "terraform",
      "yaml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
