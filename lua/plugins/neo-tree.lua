return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
    config = function(_, opts)
      require("neo-tree").setup(opts)

      -- Force open on right
      vim.keymap.set("n", "<leader>e", function()
        require("neo-tree.command").execute({
          toggle = true,
          dir = vim.loop.cwd(),
          position = "right",
        })
      end, { desc = "Explorer (right)" })
    end,
  },
}
