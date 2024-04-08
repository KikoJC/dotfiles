-- https://unix.stackexchange.com/questions/31575/remapping-keys-in-vims-directory-view/42939#42939
local nmap = function(lhs, rhs)
   vim.keymap.set("n", lhs, rhs, {remap = true, buffer = true})
end

nmap("<c-l>", "<c-w>l") -- override netrw's default <c-l> with our usual <c-l>
nmap("n", "%") -- Use n to create new file instead of %
