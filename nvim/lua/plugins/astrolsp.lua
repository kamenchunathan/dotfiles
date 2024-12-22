---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- TODO: Check if in a nix environment
    servers = {
      "hls",
      "gleam"
    },
    ---@diagnostic disable: missing-fields
    config = {
      -- clangd = { capabilities = { offsetEncoding = "utf-8" } },
      -- 
      tailwindcss = {
        filetypes = { "elm", "purescript" }
      }
    },
  }
}
