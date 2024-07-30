-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "JetBrainsMonoNL Nerd Font Mono:h16:t"
  vim.g.neovide_scale_factor = 1.2
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.7
  vim.g.transparency = 0.7
  vim.g.neovide_window_blurred = true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_antialiasing = true
  vim.opt.linespace = 2
  vim.g.neovide_input_macos_option_key_is_meta = 'none'
end
