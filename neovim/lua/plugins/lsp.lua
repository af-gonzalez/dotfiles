local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        vtsls = {
          root_dir = lspconfig.util.root_pattern("package.json"),
        },
        denols = {
          root_dir = lspconfig.util.root_pattern("deno.json"),
          init_options = {
            lint = true,
            unstable = true,
            suggest = {
              imports = {
                hosts = {
                  ["https://deno.land"] = true,
                  ["https://cdn.nest.land"] = true,
                  ["https://crux.land"] = true,
                },
              },
            },
          },
          single_file_support = false,
          settings = {
            deno = {
              internalDebug = false,
              codeLens = {
                implementations = true,
                references = true,
                referencesAllFunctions = true,
                test = true,
              },
              suggest = {
                autoImports = true,
                completeFunctionCalls = true,
                names = true,
                paths = true,
                imports = {
                  autoDiscover = true,
                },
              },
              inlayHints = {
                enumMemberValues = true,
                functionLikeReturnTypes = true,
                parameterNames = true,
                parameterTypes = true,
                propertyDeclarationTypes = true,
                variableTypes = true,
              },
            },
          },
        },
      },
    },
  },
}
