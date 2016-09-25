-- reverse a string with UTF-8

list = require("list")

function reverse_utf8(s)
    local stack = list.new()
    local c
    for c in string.gmatch(s,".[\128-\191]*") do
        list.pushfirst(stack, c)
    end
    s = list.popfirst(stack) 
    c = list.popfirst(stack)
    while c do
        s = s..c
        c = list.popfirst(stack)
    end
    return s
end

local a="Nähdään¢¥¶µÆ"
print(a)
a = reverse_utf8(a)
print(a)
