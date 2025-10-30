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
      },
      formatters_by_ft = {
        python = { "ruff_organize_imports", "ruff_format" },
      },
    },
  },
}
