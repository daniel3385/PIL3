--integral function

integral = function(f)
	return function(x, y)
		return (y-x)*f((x+y)/2)
		end
end

--test
d = function (x)
	return x+2*x
end
c = integral(d)
print(c(1, 2))
print(c(3, 4))
		
