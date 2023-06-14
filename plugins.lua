local plugins = {
  --Custom treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        --Univesity/general use
        "cpp",
        "c",
        "python",

        --Webdev?
        "javascript",
        "css",
        "html",
        "json",
      }
    }
  },

  --Custom LSP config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  --Auto Mason install
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "clangd",
        "pyright",
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "json-lsp",
      },
    },
  }
}

return plugins
