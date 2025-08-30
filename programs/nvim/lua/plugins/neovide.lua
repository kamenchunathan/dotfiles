if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        guifont = "FiraCode Nerd Font:h9",
        linespace = 0,
      },
      g = {
        neovide_scale_factor = 1.0,
        neovide_window_blurred = true,
        neovide_theme = 'dark',
        neovide_transparency = 0.9,
        neovide_floating_blur_amount_x = 2.0,
        neovide_floating_blur_amount_y = 2.0,
        neovide_fullscreen = true,
        neovide_hide_mouse_when_typing = true,
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
      },
    },
  },
}
