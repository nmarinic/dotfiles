-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
---
-- Set colorcolumn based on file type
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "go" },
  callback = function()
    if vim.bo.filetype == "python" then
      vim.opt_local.colorcolumn = "80"
      vim.b.autoformat = false
    elseif vim.bo.filetype == "go" then
      vim.opt_local.colorcolumn = "100"
    end
  end,
})
