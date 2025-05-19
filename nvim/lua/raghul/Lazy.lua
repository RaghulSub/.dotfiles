-- for convenience
local api = vim.api
local fn = vim.fn
local uv = vim.uv
local loop = vim.loop
local v = vim.v
local opt = vim.opt

-- Bootstrap lazy.nvim
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (uv or loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = fn.system({ 
	  "git", 
	  "clone", 
	  "--filter=blob:none", 
	  "--branch=stable", 
	  lazyrepo, 
	  lazypath 
  })
  if v.shell_error ~= 0 then
    api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    fn.getchar()
    os.exit(1)
  end
end
opt.rtp:prepend(lazypath)

-- lazy options
local options = {
	defaults = {
		lazy = false,
	},
	spec = {
		{ import = "raghul.plugins"}
	},
	local_spec = true,
	install = {
		missing =  true,
		colorscheme = {
			"tokyonight",
			"habamax",
		},
	},
	ui = {
		size = {
			width = 0.8,
			height = 0.8,
		},
		wrap = true,
		border = "rounded",
		backdrop = 60,
		pills = true,
	},
	checker = {
		enabled = true,
		notify = true,
		frequency = 3600,
		check_pinned = false,
	},
	change_detection = {
		enabled = true,
		notify = false,
	},
}

-- Setup lazy.nvim
require("lazy").setup(options)


