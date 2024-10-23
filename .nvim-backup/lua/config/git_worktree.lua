
M = {}

local function setcephbranches () 
  local remotes = vim.cmd("!git remote -v | grep ceph.git")
  local pwd = vim.cmd("!pwd")
  if remotes then
    vim.cmd("!setcephconfs " .. pwd)
  end
end
function M.ListBranches()
  require('telescope').extensions.git_worktree.git_worktrees()
  setcephbranches()
end

function M.CreateWorktree()
  require('telescope').extensions.git_worktree.create_git_worktree()
  setcephbranches()
end

function M.CreateBranch()
  local name = vim.fn.input("Name of branch to create ")
  local upstream = vim.fn.input("Name of upstream to use ")
  require('git-worktree').create_worktree(upstream .. "/" .. name, name, upstream)
  setcephbranches()
end


return M
