require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

o.wrapscan = false
o.expandtab = false
o.wrapscan = false
o.sw = 4
o.softtabstop = 4
o.ts = 4
o.whichwrap='b,s'
o.colorcolumn='+1'
o.textwidth=80
o.ignorecase=false

local g = vim.g
g.cursorlineopt = 'both'
g.editorconfig = false
return g
