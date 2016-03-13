-- input array then print all elemnts of the array

function printArray(t, i, n)
	local i = i or 1
	local n = n or #t
	if i <= n then
		return t[i], printArray(t, i + 1, n)
	end
end

a = {1,3,5,7,9,11,13,15}		
print(printArray(a))
print(printArray(a, nil, 4))
