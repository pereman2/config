
M = {}

function M.CreateBranch()
  local name = vim.fn.input("Name of branch to create ")
  local upstream = vim.fn.input("Name of upstream to use ")
  require('git-worktree').create_worktree(upstream .. "/" .. name, name, upstream)
end


return M
