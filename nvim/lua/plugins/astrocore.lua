---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
    },
    -- autocmds = {
    --   purescriptformatonsave = {
    --     {
    --       event = "BufWritePost",
    --       pattern = "*.purs",
    --       desc = "Format purescript files on save",
    --       group = "purescriptformatonsave",
    --       callback = function ()
    --         vim.system({'purs-tidy', 'format-in-place', 'src/**/*.purs'})
    --       end
    --     }
    --   }
    -- },
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    options = {
      opt = {
        wrap = true,
      },
    },
  },
}
