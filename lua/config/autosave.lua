vim.opt.updatetime = 1000

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  callback = function()
    if vim.bo.modified and vim.fn.expand("%") ~= "" then
      vim.cmd("silent write")
    end
  end,
})
