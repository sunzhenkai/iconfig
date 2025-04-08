-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.wrap = false

vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_cmp = "blink.cmp"

-- Clipboard
vim.opt.clipboard = "unnamedplus"
-- vim.g.clipboard = {
-- 	name = "OSC 52",
-- 	copy = {
-- 		["+"] = require("vim.ui.clipboard.osc52").copy("+"),
-- 		["*"] = require("vim.ui.clipboard.osc52").copy("*"),
-- 	},
-- 	paste = {
-- 		["+"] = require("vim.ui.clipboard.osc52").paste("+"),
-- 		["*"] = require("vim.ui.clipboard.osc52").paste("*"),
-- 	},
-- }
