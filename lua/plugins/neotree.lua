vim.g.forgetfulme = "n"

return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({

      -- Set-up event handlers to manage and restore user command-mode state
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.g.forgetfulme = vim.api.nvim_get_mode().mode
            if vim.g.forgetfulme == "i" then
              vim.cmd("stopinsert")
            end
          end,
        },
        {
          event = "neo_tree_buffer_leave",
          handler = function()
            if vim.g.forgetfulme == "i" then
              vim.cmd("startinsert")
            end
            vim.g.forgetfulme = vim.api.nvim_get_mode().mode
          end,
        },
      },
    })
  end,
}
