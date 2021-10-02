require("telescope").setup {
  pickers = {
    buffers = {
      initial_mode = "normal",
      show_all_buffers = true,
      sort_lastused = true,
      theme = "dropdown",
      previewer = false,
      mappings = {
        n = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    }
  }
}

