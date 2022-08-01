local actions = require('telescope.actions')

require'telescope'.load_extension('project')
require('telescope').load_extension('fzf')

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
                {'~/redhat', max_depth=4},
            },
            hidden_files = true, -- default: false
            theme = "dropdown"
        },

    }
}

