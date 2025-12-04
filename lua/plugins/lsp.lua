return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ruff_format = {
          args = {
            "format",
            "--line-length",
            "80",
            "--config",
            "format.quote-style='single'",
            "--stdin-filename",
            "$FILENAME",
            "-",
          },
        },
        golines = {
          prepend_args = { "--max-len=100" },
        },
      },
      formatters_by_ft = {
        python = { "ruff_organize_imports", "ruff_format" },
        go = { "gofumpt", "golines" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = false,
                functionTypeParameters = false,
                parameterNames = true,
                rangeVariableTypes = true,
              },
            },
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "flake8" },
      },
    },
  },
}
