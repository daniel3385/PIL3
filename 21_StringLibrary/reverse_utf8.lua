-- reverse a string with UTF-8

--


local a="Nähdään¢¥¶µÆ"
local b="daniel"
function reverse_utf8(s)
    for c in string.gmatch(a,".[\128-\191]") do
        -- insert in a stack
        print(c)
    end
    --remove stack, concat
    return s
end

a = string.reverse(a)
print(a)
b = string.reverse(b)
print(b)
