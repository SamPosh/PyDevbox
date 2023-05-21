return {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        'williamboman/mason.nvim',
    },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.black.with({
             extra_args = {"--line-length=120", "--skip-string-normalization"},
             filetypes = {
                "python"
              },
          }),
          nls.builtins.formatting.prettier.with({
              extra_args = {
                "--print-with", "80"
              },
              filetypes = {
                "typescript", "typescriptreact", "javascript", "vue","json","yaml"
              },
            }),
        },
      }
    end,
}
