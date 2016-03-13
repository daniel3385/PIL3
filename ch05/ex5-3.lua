-- input number output all but the first

function remove_first(...)
	local t = table.pack(...)
	table.remove(t, 1)
	return table.unpack(t)
end

print (remove_first(1,3,5,7,9,11,13,15,17))
