-- return {
--   "maxmx03/solarized.nvim",
--   lazy = false,
--   priority = 1000,
--   ---@type solarized.config
--   opts = {},
--   config = function(_, opts)
--     vim.o.termguicolors = true
--     vim.o.background = "light"
--     require("solarized").setup(opts)
--     vim.cmd.colorscheme("solarized")
--   end,
-- }

return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = {
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
  },
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = "dark"
    require("gruvbox").setup(opts)
    vim.cmd.colorscheme("gruvbox")
  end,
}
