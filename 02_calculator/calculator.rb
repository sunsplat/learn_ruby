def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	add_together = 0
	arr.each do |i|
		add_together += i
	end
	add_together
end

def multiply(num1, num2)
	num1 * num2
end

def power(num1, num2)
	num1**num2
end

def factorial(num)
	number = num
	total = 1
	until number == 1
		total *= num
		number -= 1
	end
	total
end
