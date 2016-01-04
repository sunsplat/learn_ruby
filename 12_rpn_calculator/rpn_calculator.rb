class RPNCalculator
	def initialize
		@calculator = []
		@num = 0
	end

	def push(num)
		@calculator << num
	end

	def times
		if @calculator.length >= 2
			@num += @calculator[-2].to_f * @calculator[-1]
			@calculator.pop(2)
		else
			@num *= @calculator[-1]
			@calculator.pop
		end
	end

	def divide
		if @calculator.length >= 2
			@num += @calculator[-2].to_f / @calculator[-1]
			@calculator.pop(2)
		else
			@num /= @calculator[-1]
			@calculator.pop
		end
	end
	
	def plus
		if @calculator.length >= 2
			@num += @calculator[-1] + @calculator[-2]
			@calculator.pop(2)
		else
			@num += @calculator[-1]
			@calculator.pop
		end
	end

	def minus
		if @calculator.length >= 2
			@num += @calculator[-2] - @calculator[-1]
			@calculator.pop(2)
		else
			@num -= @calculator[-1]
			@calculator.pop
		end
	end

	def value
		return @num
	end
end