-- receive a array, print it elements

function print_array(t)
    for _, v in ipairs(t) do
        print(v)
    end
end

local a = {"a", "b", "c", "d", "e"}
print_array(a)
