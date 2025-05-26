
local cmd = vim.cmd

local on_colors = function (colors) end
local on_highlights = function (highlights, colors) end

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
  on_colors = on_colors,
  on_highlights = on_highlights,
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
