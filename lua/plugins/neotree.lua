return  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,  -- Make sure hidden files are visible
          hide_gitignored = false, -- Optionally show gitignored files
        },
        follow_current_file = true,
        use_libuv_file_watcher = true,  -- Watch file changes actively
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            if file_path:find("%(") or file_path:find("%)") then
              vim.cmd("silent! %s/\\([()]/\\\\&/g")
            end
          end,
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            added     = "✚",  -- Or any other icon for added files
            modified  = "",  -- Icon for modified files
            deleted   = "✖",  -- Icon for deleted files
            renamed   = "➜",  -- Icon for renamed files
            untracked = "★",  -- Icon for untracked files
            ignored   = "◌",  -- Icon for ignored files
            unstaged  = "✗",  -- Icon for unstaged changes
            staged    = "✓",  -- Icon for staged changes
            conflict  = "",  -- Icon for conflicts
          },
        },
      },
    })
    vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal right<CR>')
    vim.keymap.set('n', '<leader>E', ':Neotree filesystem close<CR>')
  end
}
