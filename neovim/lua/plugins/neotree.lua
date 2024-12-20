return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "left",
        width = 50,
        mappings = {
          ["o"] = "open",
        },
      },
      filesystem = {
        window = {
          mappings = {
            ["o"] = "open",
            ["oc"] = "",
            ["od"] = "",
            ["om"] = "",
            ["og"] = "",
            ["on"] = "",
            ["os"] = "",
            ["ot"] = "",
          },
        },
      },
    },
  },
}
