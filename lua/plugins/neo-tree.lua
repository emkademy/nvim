return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window.position = "right"
      opts.window.mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
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
