return {
  {
    "glebzlat/arduino-nvim",
    config = {
      function()
        require("arduino-nvim").setup {
          default_fbqn = "Inkplate_Boards:esp32:Inkplate10V2",
        }
      end,
      filetype = "arduino",
    },
  },
}
