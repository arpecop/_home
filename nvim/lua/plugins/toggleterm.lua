return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "horizontal",
    hide_numbers = true,
    insert_mappings = false,
    open_mapping = [[<Leader>t]],
    persist_size = false,
    shade_filetypes = {},
    shade_terminals = true,
    size = 4,
    start_in_insert = true,
    shell = "zsh",
    highlights = {
      Normal = {
        link = "DarkNormal",
      },
    },
    winbar = {
      enabled = false,
    },
    --[[ things you want to change go here]]
  },
}
