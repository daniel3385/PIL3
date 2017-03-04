-- factorial

-- return factorial of 'n', return 'nil' otherwise

function fact(n)
    if type(n) ~= "number" or n < 0 or n%1 ~= 0 then
		-- It's not a number, or positive or integer, wrong input!
		return nil
	end
	if n == 0 then
		return 1
	else
		return n*fact(n-1)
	end
end

