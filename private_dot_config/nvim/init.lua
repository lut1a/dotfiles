local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  "Mofiqul/vscode.nvim",
})
vim.opt.encoding="utf-8"
vim.g.mapleader = ","
HOME = os.getenv('HOME')
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
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')



vim.opt.termguicolors = true
vim.o.background = 'light'
vim.cmd.colorscheme('vscode')


if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    vim.o.guifont = "JetBrains Mono,Noto Color Emoji:h20"
end
