-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = vim.opt
opt.encoding = "utf-8"
opt.undofile = false

HOME = os.getenv("HOME")
vim.opt.backupdir = HOME .. "/.local/share/nvim/backup"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.foldmethod = "marker"
vim.opt.foldmarker = "<<<,>>>"
vim.opt.termguicolors = true
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "JetBrains Mono,Noto Color Emoji:h20"
  vim.g.neovide_fullscreen = true
end
-- vim: ts=2 sts=2 sw=2 et
