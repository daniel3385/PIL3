-- verify boolen whithout use type()...

function verifyBool(bool)
    local result = false
    if (bool == true) or (bool == false) then
        result = true
    end
    return result
end

