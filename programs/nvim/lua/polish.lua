-- Set up custom filetypes
vim.filetype.add {
  extension = {
    purs = "purescript"
  },
}

vim.o.guifont = 'FiraCode Nerd Font:h9'
vim.g.neovide_fullscreen = true
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_theme = 'dark'
vim.g.neovide_transparency = 0.9
vim.cmd[[colorscheme kanagawa]]
