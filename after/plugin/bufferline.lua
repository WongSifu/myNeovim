local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  print("could not find bufferline")
  return
end
bufferline.setup({
  options = {
    indicator = {
      style = '▎',
    },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    diagnostics = "nvim_lsp",
    filetype = "NvimTree",
    text = "File Explorer",
    highlight = "Directory",
    text_align = "left",
    separator_style = "slant",
    always_show_bufferline = true
  }
})


vim.keymap.set("n", "<leader>cl", "<cmd>BufferLineCloseLeft<CR>", {})
vim.keymap.set("n", "<leader>cr", "<cmd>BufferLineCloseRight<CR>", {})
vim.keymap.set("n", "<leader>cc", "<cmd>BufferLineCloseLeft<CR>|<cmd>BufferLineCloseRight<CR> ", {})
