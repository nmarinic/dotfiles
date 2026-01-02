return {
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      local filetype = vim.bo.filetype
      local buftype = vim.bo.buftype
      local filename = vim.fn.expand("%:t")
      -- Disable for txt files
      if filetype == "text" or filetype == "txt" then
        return false
      end
      -- Disable for files with no extension
      if filename ~= "" and not filename:match("%.") then
        return false
      end
      -- Disable in special buffers
      return buftype ~= "prompt" and buftype ~= "nofile"
    end,
  },
}
