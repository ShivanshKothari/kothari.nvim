return {
  {
    "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "tsserver", "eslint", "mdx_analyzer", "pylsp", "prismals", "ast_grep"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup {}
      lspconfig.tsserver.setup {}
      lspconfig.eslint.setup {}
      lspconfig.mdx_analyzer.setup {}
      lspconfig.pylsp.setup {}
      lspconfig.prismals.setup {}
      lspconfig.ast_grep.setup {}

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})

    end
  },
}
