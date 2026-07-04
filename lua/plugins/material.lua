return {
  "marko-cerovac/material.nvim",
  priority = 1000,
  config = function()
    vim.g.material_style = "deep ocean"

    require("material").setup({
      contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
      },
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
      plugins = {
        "gitsigns",
        "neo-tree",
        "which-key",
        "mini",
      },
    })
  end,
}
