-- input strings then output them concatenated

function concat(...)
    local output = ""
    for k, v in pairs{...} do
        output = output .. v
    end
    return output
end

