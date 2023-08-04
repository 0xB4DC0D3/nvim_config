local opt = vim.opt

opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false
opt.clipboard:prepend({ "unnamed", "unnamedplus" })
opt.showmode = false
opt.splitbelow = true
opt.splitright = true
opt.autoindent = true
opt.backup = false
opt.scrolloff = 10
opt.inccommand = "split"
opt.smarttab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.backspace = "start,eol,indent"
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.fillchars = { eob = " " }

vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

vim.diagnostic.config({
  severity_sort = true
})
