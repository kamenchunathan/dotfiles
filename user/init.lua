return {
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
      },
      timeout_ms = 1000, -- default format timeout
    },
  },
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes
    vim.filetype.add {
      extension = {
        purs = "purescript",
        pl = "prolog",
        m = "mercury",
        lean = "lean",
        wgsl = "wgsl",
      },
    }

    vim.cmd([[colorscheme tokyonight-moon]])
  end,
}
