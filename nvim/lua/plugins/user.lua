---@type LazySpec
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "███    ███████        ██        ███████     ████████    ██ ███████████████████████▓▓██████",
        "███    ███   ██       ██       ██   ███     ███   ███  ██  █████████████████▓▓▓▓▓▓░░██████",
        "███    ███████     ████████    ████████  █  ████████████   ███████████████▒▒██▓▓░░░░██████",
        "███    ███         ██  ██      ██   ███ ███ ███   ██ ██    █████████████▒▒████▒▒  ▓▓██████",
        "  ████████         ██████      ██   █████ █████   ██ ██    ███████████▓▓████▓▓░░  ████████",
        "                                                           █████████▓▓██▓▓░░  ░░██████████",
        "██████████████████████████████████████████████████████████████████▓▓████▓▓░░  ████████████",
        "██████████████████████████████████████████████████████████████████▓▓████▓▓▒▒  ████████████",
        "████████████████████████████████████████████████████████████████▓▓▓▓██▓▓▓▓  ▓▓████████████",
        "██████████████████████████████████████████████████████████████▓▓▓▓██▓▓▒▒░░▓▓▓▓████████████",
        "▒▒▓▓▓▓████████████████████████████████████████████████████████▓▓██▓▓▒▒░░▒▒████████████████",
        "░░▒▒▒▒▒▒▓▓▓▓████████████████████████████████████████████████▓▓████▓▓▒▒░░██████████████████",
        "░░░░░░░░▒▒▒▒▒▒▓▓▓▓████████████████████████████████████████▓▓██▓▓▓▓▒▒░░████████████████████",
        "  ░░░░░░░░░░░░▒▒▒▒▒▒▓▓████████████████████████████████████▓▓██▓▓▓▓  ▒▒████████████████████",
        "░░░░      ░░░░░░░░░░▒▒▒▒▓▓▓▓████████████████████████████▓▓██▓▓░░▒▒░░██████████████████████",
        "░░░░░░░░░░        ░░░░░░▒▒▒▒▓▓▓▓▓▓████████████████████▓▓████▒▒▒▒░░████████████████████████",
        "░░░░░░░░░░░░░░          ░░░░▒▒▒▒▒▒▓▓▓▓▓▓██████████████▓▓██▒▒░░  ██████████████████████████",
        "░░░░░░░░░░░░░░░░░░░░░░      ░░░░░░▒▒▒▒▓▓▓▓▓▓████████▓▓██▓▓▒▒▒▒████████████████████████████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░        ░░░░░░▒▒▒▒▓▓▓▓▓▓▓▓██▓▓░░░░▓▓████████████████████████████",
        "░░░░░░  ░░░░░░░░░░░░░░░░░░░░░░░░      ░░░░░░▒▒▒▒▓▓▓▓██▒▒░░░░██████████████████████████████",
        "░░░░░░░░░░      ░░░░░░░░░░░░░░░░░░░░░░    ░░░░░░▓▓██▓▓░░  ████████████████████████████████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ░░░░░░░░░░██▓▓▒▒  ▒▒▓▓▓▓████████████████████████████",
        "░░░░  ░░░░░░▒▒░░      ░░░░  ░░░░░░░░░░░░░░░░░░████▒▒  ░░░░▒▒▒▒▓▓▓▓▓▓██████████████████████",
        "░░░░░░  ░░░░░░░░░░░░░░░░░░░░    ░░        ░░████▓▓░░    ░░░░░░▒▒▒▒▓▓▓▓████████████████████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░    ░░░░    ▒▒██▓▓▓▓░░        ░░░░░░░░▒▒▓▓▓▓████████████████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░      ░░  ░░██████▒▒            ░░░░░░░░▒▒▓▓▓▓██████████████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▓▓▓▓██▓▓██                    ░░░░░░▒▒▓▓▓▓██████████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓░░                          ░░░░░░▒▒▓▓▓▓██████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▒▒░░▓▓▒▒                          ░░░░░░░░▒▒▓▓████",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ░░▓▓░░░░▒▒▒▒                                ░░░░░░▒▒▓▓",
        "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ░░  ░░░░      ░░                                ░░░░░░",
      }
      return opts
    end,
  },
  {"ellisonleao/glow.nvim", config = true, cmd = "Glow"},
  { 'LhKipp/nvim-nu', lazy = false },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
  },{
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },{
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
