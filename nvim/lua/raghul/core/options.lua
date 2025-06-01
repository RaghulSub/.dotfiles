vim.cmd("let g:netrw_lifestyle = 3")

local opt = vim.opt

local indent = 4

-- line numbers
opt.relativenumber = true
opt.numberwidth = 5
opt.number = true

-- for indentation

opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.shiftround = true
opt.smartindent = true
opt.smarttab = true
opt.softtabstop = indent
opt.tabstop = indent

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = "unnamedplus"

-- for search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.inccommand = "split" 

-- splits
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true

-- files
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- background
opt.termguicolors = true
opt.background = "dark"
-- scroll
opt.scrolloff = 8

-- filename
opt.isfname:append("@-@")











