local map = require('core.utils').map

map("n", "<Leader>gg", ":Git <CR>")
map("n", "<Leader>gb", ":Git blame <CR>")
map("n", "<Leader>gd2", ":diffget //2 <CR>")
map("n", "<Leader>gd3", ":diffget //3 <CR>")
