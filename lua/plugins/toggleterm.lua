return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    cmd = "ToggleTerm",
    build = ":ToggleTerm",
    keys = {{ "<c-t>"}},
    opts = {
      size = 20,
      open_mapping = [[<c-t>]],
      direction = "horizontal",
      terminal_mappings = true,
      hide_numbers = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
}
