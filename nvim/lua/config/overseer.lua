local overseer = require("overseer")

require("dap.ext.vscode").json_decode = require("overseer.json").decode

local overseer_config = {
  dap = true,
  actions = {
    ["My custom action"] = {
      desc = "This is an optional description. It may be omitted.",
      -- Optional function that will determine when this action is available
      condition = function(task)
        if task.name == "foobar" then
          return true
        else
          return false
        end
      end,
      run = function(task)
        -- Your custom logic here
      end,
    },

    -- Disable built-in actions by setting them to 'false'
    watch = false,
  },
}


overseer.register_template(
  {
    -- Required fields
    name = "build ceph_test_object_store",
    builder = function(params)
      -- This must return an overseer.TaskDefinition
      return {
        -- cmd is the only required field
        cmd = {'ninja'},
        -- additional arguments for the cmd
        args = {"ceph_test_objectstore", "-j4"},
        -- the name of the task (defaults to the cmd of the task)
        name = "build test bluestore",
        -- set the working directory for the task
        cwd = "build",
      }
    end,
    -- Optional fields
    desc = "Build ceph's test objectstore",
    -- Tags can be used in overseer.run_template()
    tags = {overseer.TAG.BUILD},
    params = {
      -- See :help overseer-params
    },
    -- Determines sort order when choosing tasks. Lower comes first.
    priority = 50,
    -- Add requirements for this template. If they are not met, the template will not be visible.
    -- All fields are optional.
  }
)

overseer.register_template(
  {
    -- Required fields
    name = "run tests ceph_test_objectstore",
    builder = function(params)
      -- This must return an overseer.TaskDefinition
      return {
        -- cmd is the only required field
        cmd = {'build/bin/ceph_test_objectstore'},
        -- additional arguments for the cmd
        args = {
              "--gtest_filter=\"ObjectStore/StoreTest.*/1\"",
              "--debug_rocksdb=0/0",
              "--plugin_dir=./lib",
              "--debug_bluestore=20/20",
              "--debug_bluefs=20/20",
              "--log_file=log.log"
        },
        -- the name of the task (defaults to the cmd of the task)
        name = "rust test bluestore",
        -- set the working directory for the task
        cwd = "build",
      }
    end,
    -- Optional fields
    desc = "run ceph's test objectstore",
    -- Tags can be used in overseer.run_template()
    -- tags = {overseer.TAG.BUILD},
    params = {
      -- See :help overseer-params
    },
    -- Determines sort order when choosing tasks. Lower comes first.
    priority = 50,
    -- Add requirements for this template. If they are not met, the template will not be visible.
    -- All fields are optional.
  }
)

overseer.setup(overseer_config)



-- template of tasks
-- {
--   -- Required fields
--   name = "Some Task",
--   builder = function(params)
--     -- This must return an overseer.TaskDefinition
--     return {
--       -- cmd is the only required field
--       cmd = {'echo'},
--       -- additional arguments for the cmd
--       args = {"hello", "world"},
--       -- the name of the task (defaults to the cmd of the task)
--       name = "Greet",
--       -- set the working directory for the task
--       cwd = "/tmp",
--       -- additional environment variables
--       env = {
--         VAR = "FOO",
--       },
--       -- the list of components or component aliases to add to the task
--       components = {"my_custom_component", "default"},
--       -- arbitrary table of data for your own personal use
--       metadata = {
--         foo = "bar",
--       },
--     }
--   end,
--   -- Optional fields
--   desc = "Optional description of task",
--   -- Tags can be used in overseer.run_template()
--   tags = {overseer.TAG.BUILD},
--   params = {
--     -- See :help overseer-params
--   },
--   -- Determines sort order when choosing tasks. Lower comes first.
--   priority = 50,
--   -- Add requirements for this template. If they are not met, the template will not be visible.
--   -- All fields are optional.
--   condition = {
--     -- A string or list of strings
--     -- Only matches when current buffer is one of the listed filetypes
--     filetype = {"c", "cpp"},
--     -- A string or list of strings
--     -- Only matches when cwd is inside one of the listed dirs
--     dir = "/home/user/my_project",
--     -- Arbitrary logic for determining if task is available
--     callback = function(search)
--       print(vim.inspect(search))
--       return true
--     end,
--   },
-- }
