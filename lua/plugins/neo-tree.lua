return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = function(_, opts)
      opts.window.position = "right"
      opts.window.mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
        ["c"] = {
          "copy",
          config = {
            show_path = "relative",
          },
        },
        ["m"] = {
          "move",
          config = {
            show_path = "relative",
          },
        },
      }
      opts.filesystem.follow_current_file.enabled = false
      opts.filesystem.follow_current_file.leave_dirs_open = true
      opts.buffers = {
        follow_current_file = {
          enabled = false,
          leave_dirs_open = true,
        },
      }
    end,
  },
}
