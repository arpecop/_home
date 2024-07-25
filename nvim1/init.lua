-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lspconfig").astro.setup({})
return {
  lsp = {
    formatting = {
      timeout_ms = 5200,
    },
  },
}
