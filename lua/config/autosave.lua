vim.opt.updatetime = 1000

vim.api.nvim_create_autocmd({ "InsertLeave", "BufLeave", "FocusLost" }, {
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" and vim.bo.modifiable and vim.fn.expand("%") ~= "" then
      vim.cmd("silent write")
    end
  end,
})
