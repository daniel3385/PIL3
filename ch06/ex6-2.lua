-- input polynomium return function f() of it

poly = function(t)
	return function(x)
		local result = t[1]
		for i = 2, #t do
			result = result +t[i]*(x^(i-1))
		end
		return result
	end
end

--test
table = {1, 2, 3}
f = poly(table)
print(f(2)) 
			
		
		
