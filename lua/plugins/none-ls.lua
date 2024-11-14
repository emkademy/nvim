return {
  {
    "nvimtools/none-ls.nvim",
    event = "LazyFile",
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")

      nls.register({
        name = "add type ignore",
        method = { require("null-ls").methods.CODE_ACTION },
        filetypes = { "_all" },
        generator = {
          fn = function()
            return {
              {
                title = "ignore type annotations",
                action = function()
                  vim.cmd("normal $A  # type: ignore")
                end,
              },
            }
          end,
        },
      })

      return {
        root_dir = require("null-ls.utils").root_pattern(
          ".null-ls-root",
          ".neoconf.json",
          "Makefile",
          ".git",
          "pyproject.toml",
          "package.json"
        ),
        sources = {
          nls.builtins.formatting.fish_indent,
          nls.builtins.diagnostics.fish,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.shfmt,
          nls.builtins.diagnostics.mypy,
          -- nls.builtins.diagnostics.ruff_lsp,
          -- nls.builtins.diagnostics.pyright,
          -- nls.builtins.diagnostics.flake8,
        },
      }
    end,
  },
}
