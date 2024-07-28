return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      panel = { enabled = true, auto_refresh = true },
      suggestion = { enabled = true, auto_trigger = true },
      filetypes = {
        markdown = true,
        help = true,
        gitcommit = true,
        gitrebase = true,
      },
    },
  },
}
