vim.o.background = "dark"
vim.cmd.colorscheme("tokyonight")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.list = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cmdheight = 0

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true


-- diagnostic
vim.diagnostic.config({
  underline = true,
  virtual_text = true,
  signs = true,
  update_in_insert = true,
})

vim.cmd([[
  highlight DiagnosticUnderlineError gui=undercurl guisp=red
  highlight DiagnosticUnderlineWarn gui=undercurl guisp=yellow
]])
