-- receive string, change each character base in a table map.
-- ex: table maps 'a' to 'b' change each 'a' for 'b', if
-- maps 'a' to false, remove 'a'.


function transliterate(s, t)
    s = string.gsub(s, ".", function(n)
        if t[n] == false then
            return ""
        end
        return t[n]
    end)
    return s
end

local t = {["a"]="b", ["i"]=false}
local s = "daniel"
print(transliterate(s, t))
