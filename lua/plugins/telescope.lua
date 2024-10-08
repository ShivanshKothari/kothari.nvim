return  {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>pv', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>pf', builtin.git_files, {})

      require('telescope').setup({
      defaults = {
        vimgrep_arguments = {
          'fd', '--type', 'f', '--hidden', '--follow', '--exclude', '.git'
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          find_command = { 'fd', '--type', 'f', '--hidden', '--no-ignore', '--exclude', '.git', '--exclude', 'node_modules' },
        },
      },
    })

    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  },
}
