local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        vtsls = {
          root_dir = lspconfig.util.root_pattern("package.json"),
          single_file_support = false,
        },
        denols = {
          root_dir = lspconfig.util.root_pattern("deno.json"),
          single_file_support = false,
        },
      },
    },
  },
}
