local astro = require "astrocore"
local lazygit = {
  callback = function()
    local worktree = astro.file_worktree()
    local flags = worktree and (" --work-tree=%s --git-dir=%s"):format(worktree.toplevel, worktree.gitdir)
      or ""
    astro.toggle_term_cmd { cmd = "export GPG_TTY=$(tty) && lazygit " .. flags, direction = "float" }
  end,
  desc = "ToggleTerm lazygit",
}

return  {
  'akinsho/toggleterm.nvim',
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<leader>tl"] = {
              function()
                local trim_spaces = true
                require("toggleterm").send_lines_to_terminal("single_line", trim_spaces, { args = vim.v.count })
              end,
            desc = "Send Current line to terminal"
            },
            ["<Leader>gg"] = { lazygit.callback, desc = lazygit.desc },
            ["<Leader>tl"] = { lazygit.callback, desc = lazygit.desc },
          },
          v = {
            ["<leader>ts"] = {
                function()
                  local trim_spaces = true
                  require("toggleterm").send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })
                end,
              desc = "Send Selection"
            },
          }
        },
      }
    }
  }
};
