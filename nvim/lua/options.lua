require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.list = true -- Enable list mode globally
vim.opt.listchars = {
  tab = '»-', -- Show tabs as right-arrow and dash
  space = '·', -- Show spaces as dots
  trail = '•', -- Show trailing whitespace as dots
  -- eol = '¶',   -- Show end-of-line as pilcrow
  -- Other options:
  extends='>', precedes='<', nbsp='␣'
}

o.expandtab = false
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
