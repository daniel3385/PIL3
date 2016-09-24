-- '%D' is the same as '[^%d]',  but is '[^%d%u]' the same as '[%D%U]' ?
--[[    
    No, [^%d%u] is the complement of the set [%d%u]
    not digit and not upper-case letter.

    While [%D%U] is the set not digit or not upper-case letter
    ex:

    > return string.gsub("d4NiEl0", "[^%d%u]", ".")
    .4N.E.0 3
    > return string.gsub("d4NiEl0", "[%D%U]", ".")
    ....... 7

--]]
