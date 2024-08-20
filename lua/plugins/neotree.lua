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
        filetered_items = {
          visible = true,
          hide_dotfiles = false,
          show_hiddent_count = true,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {}
        },
      },
    })
    vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal right<CR>')
    vim.keymap.set('n', '<leader>E', ':Neotree filesystem close<CR>')
  end
}
