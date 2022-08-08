require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        prompt_prefix = "🔍 ",
    },
    extensions = {
        project = {
            base_dirs = {
                {'~/redhat', max_depth=2},
                {'~/fun', max_depth=3},
            },
            hidden_files = false, -- default: false
            theme = "dropdown"
        },

    }
}

require'telescope'.load_extension('project')
require("telescope").load_extension("git_worktree")
