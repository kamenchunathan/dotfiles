---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      },
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    filetypes = {
      extension = {
        purs = "purescript",
      },
    },
  },
}
