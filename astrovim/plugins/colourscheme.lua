return {
  {
    'morhetz/gruvbox',
    config = function()
      -- transparent background stuff
      vim.cmd("let g:gruvbox_transparent_bg = 1")
      vim.cmd("autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE")
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
}
