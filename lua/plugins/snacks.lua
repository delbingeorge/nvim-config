return {
  "folke/snacks.nvim",
  opts = {
    notifier = {
      top_down = false,
    },
    picker = {
      sources = {
        files = {
          exclude = { "node_modules", ".git", "dist", "build" },
        },
        grep = {
          exclude = { "node_modules", ".git", "dist", "build" },
        },
      },
    },
  },
}
