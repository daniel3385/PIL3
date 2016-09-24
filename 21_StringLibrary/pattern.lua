-- '%D' is the same as '[^%d]',  but is '[^%d%u]' the same as '[%D%U]' ?
--[[
    No, string.gsub(s, "[%D%U]", ".") will substitute 
    all non-digits and all lower-cases letters for "."

    However, string.gsub(s, "[^%d%u]", ".") will substitute
    all non-digits and not upper-cases for "."

    > return string.gsub("d4NiEl0", "[^%d%u]", ".")
    .4N.E.0 3
    > return string.gsub("d4NiEl0", "[%D%U]", ".")
    ....... 7

--]]
