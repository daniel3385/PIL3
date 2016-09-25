-- factorial

function fact (n)
	if n < 0 then
		print("can not calculate factorial of a negative number!")
		return nil
	end
	if n == 0 then
		return 1
	else
		return n*fact(n-1)
	end
end

print("Print factorial number")
print("enter a number:")
a = io.read("*number")
print(fact(a))
