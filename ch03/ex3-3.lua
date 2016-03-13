--anX^n+a(n-1)X^(n-1)+..a1X+a0

function solve_polynomial(t,x)
	local result = t[1]	
	for i = 2, #t do
		result = result + t[i]*(x^(i-1))
	end
	return result
end
a = {2, 4, 8}
x = 10
print(solve_polynomial(a, x))
