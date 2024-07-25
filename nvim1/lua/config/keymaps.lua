vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- vim.opt.clipboard:append("unnamedplus")
vim.keymap.set("n", "<C-Shift-r>", "<Esc>:w<CR>", { silent = true })
vim.keymap.set("n", "<C-q>", "<Esc>:q<CR>", { silent = true })
vim.keymap.set("n", "<D-a>", "<Esc>:ggVG<CR>", { silent = true })

local modes = { "i", "v", "n", "x" }

vim.keymap.set("v", "d", '"_d', { silent = true })
vim.keymap.set("v", "<Leader>", '"_d', { silent = true })
vim.keymap.set("v", "c", '"+y<Esc>', { silent = false, noremap = true })

-- vim.keymap.set("v", "<D><c>", '"+y', { silent = true })
vim.keymap.set("v", "<C-c>", '"+y<Esc>', { silent = false, noremap = true })
for _, mode in ipairs(modes) do
  vim.keymap.set("v", "c", '"+y<Esc>', { silent = false, noremap = true })
  vim.keymap.set(mode, "<C-a>", "<Esc>ggVG<CR>", { silent = true })
  vim.keymap.set(mode, "<C-v>", "<Esc>pa", { silent = true })

  vim.keymap.set(mode, "<C-w>", "<Leader><b><d>", { silent = true })
  vim.keymap.set(mode, "<C-/>", "<Esc>gcc<CR>", { silent = false })
  vim.keymap.set(mode, "<C-y>", "<Esc>:redo<CR><Esc>", { silent = true })
  vim.keymap.set(mode, "<C-z>", "<Esc>:undo<CR>i", { silent = true })
  vim.keymap.set(mode, "<C-s>", "<Esc>:w<CR>i<Right>", { silent = true })
  -- vim.keymap.set(mode, "<C-i>", "<Esc>:CopilotChatOpen<CR> i ", { silent = true })
  vim.keymap.set(mode, "<C-CR>", function()
    vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes("<Esc><CR><CR>", true, false, true),
      "i",
      true
    )
  end, { silent = false })
end
