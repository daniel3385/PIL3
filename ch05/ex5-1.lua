-- input strings then output them concatenated

function concatenated(...)
	local output = ""
	for k, v in pairs{...} do
		output = output .. v
	end
	return output
end

print(concatenated("daniel","cabral","silveira","bla","bla2"))
