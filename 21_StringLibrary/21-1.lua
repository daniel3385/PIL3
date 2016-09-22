--receive a string and a delimiter, return a sequence 
-- ex:
-- t = split("a whole new world", " ")
-- t = {"a", "whole", "new", "world"}

local module = {}

function module.printList(t)
    local str
    for _, v in pairs(t) do
        if not str then
            str = "{ "..v
        else
            str = str..", "..v
        end
    end
    str = str.." }"
    print(str)
end

function module.split(str, delimiter)
    local t = {}
    for w in string.gmatch(str, "[^"..delimiter.."]+") do
        t[#t + 1] = w
    end

    return t
end

return module
