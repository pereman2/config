local resession = require("resession")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Save these to a different directory, so our manual sessions don't get polluted
      resession.load(vim.fn.getcwd(), { dir = "dirsession", silence_errors = true })
  end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    resession.save(vim.fn.getcwd(), { dir = "dirsession", notify = false })
  end,
})

resession.setup({
  autosave = {
    enabled = true,
    interval = 60,
    notify = true,
  },
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    -- Always save a special session named "last"
    resession.save("last")
  end,
})
