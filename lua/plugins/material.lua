return {
  "marko-cerovac/material.nvim",
  priority = 1000,
  config = function()
    vim.g.material_style = "palenight" -- ocean, deep ocean, lighter, palenight

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
        "nvim-tree",
        "telescope",
        "which-key",
        "mini",
      },
    })

    vim.cmd.colorscheme("material")
  end,
}
