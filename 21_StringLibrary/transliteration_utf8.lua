-- receive string, change each character base in a table map.
-- ex: table maps 'a' to 'b' change each 'a' for 'b', if
-- maps 'a' to false, remove 'a'.
-- inclue utf-8 characters

function transliterate(s, t)
    s = string.gsub(s, ".[\128-\191]", function(n)
        if t[n] == false then
            return ""
        end
        return t[n]
    end)
    return s
end

local t = {["ä"]="b", ["i"]=false}
local s= "ähdään¢¥¶µÆ"
print(transliterate(s, t))
