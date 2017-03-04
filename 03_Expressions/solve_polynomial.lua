--anX^n+a(n-1)X^(n-1)+..a1X+a0

--[[
    Ex: t= {2, 4, 8} means 2+4x+8x²
    a = 10 means f(10) = 2 + 4*10 + 8*10*10 = 842
--]]
function solve_polynomial(t,x)
	local result = t[1]	
	for i = 2, #t do
		result = result + t[i]*(x^(i-1))
	end
	return result
end
