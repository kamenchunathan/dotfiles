local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.api.nvim_create_user_command

autocmd({ "BufWritePost" }, {
  group = augroup("format_on_save", { clear = true }),
  pattern = "*.purs",
  command = "!purs-tidy format-in-place src/**/*.purs",
})
