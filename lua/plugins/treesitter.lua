return  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.install").compilers = {'zig'}
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed= { "lua", "javascript"},
      highlight = {enable = true},
      indent = {enable = true},
    })


  end
}
