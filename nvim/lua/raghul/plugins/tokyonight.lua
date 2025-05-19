
local cmd = vim.cmd

local dependencies = {}
local opts = {
    style = "night",
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
    },
    dim_inactive = true,
    lualine_bold = true,
    cache = true,
  }

function init ()
  cmd("colorscheme tokyonight")
end

function config ()
  require('tokyonight').setup(opts)
end

return {
  'folke/tokyonight.nvim',
  version = "*",
  lazy = false,
  priority = 1000,
  dependencies = dependencies,
  init = init,
  opts = opts,
  config = config,
}
