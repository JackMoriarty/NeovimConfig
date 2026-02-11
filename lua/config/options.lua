-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- neovide 字体设置
if vim.g.neovide then
  vim.opt.guifont = "Maple Mono NF CN:h12"
end

-- 显示80列辅助线
vim.opt.colorcolumn = "80"
