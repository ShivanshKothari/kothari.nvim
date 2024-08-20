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
      hide_dotfiles = false,  -- Show hidden files
      hide_gitignored = false, -- Show git-ignored files (optional)
    },
    follow_current_file = true,
    use_libuv_file_watcher = true,  -- This helps track file changes
  },
  event_handlers = {
    {
      event = "neo_tree_buffer_enter",
      handler = function()
        -- Escaping special characters for route folders
        vim.cmd("silent! %s/\\([()]/\\\\&/g")
      end,
    },
  },
})
   vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal right<CR>')
    vim.keymap.set('n', '<leader>E', ':Neotree filesystem close<CR>')
  end
}
