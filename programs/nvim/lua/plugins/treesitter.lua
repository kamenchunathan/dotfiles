---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "elm",
      "purescript",
      "rust",
      "python"
    },
  },
}
