return {
  "echasnovski/mini.map",
  version = false,
  config = function()
    local minimap = require("mini.map")

    minimap.setup({
      integrations = {
        minimap.gen_integration.builtin_search(),
        minimap.gen_integration.diagnostic(),
        minimap.gen_integration.gitsigns(),
      },
      symbols = {
        encode = minimap.gen_encode_symbols.dot("4x2"),
      },
      window = {
        width = 10,
        winblend = 25,
      },
    })

    vim.keymap.set("n", "<leader>mm", function()
      minimap.toggle()
    end, { desc = "Toggle Minimap" })
  end,
}
