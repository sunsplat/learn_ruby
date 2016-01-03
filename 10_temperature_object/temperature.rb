class Temperature
	def initialize(options = {})
		@options = options
	end
	def self.from_celsius(num)
		self.new(:c => num)
	end
	def in_fahrenheit
		if @options.include? :f
			@options[:f] = @options[:f]
		else
			# CtoF(37) == 98.600000000000008526512829121202.
			@options[:f] = ((@options[:c].to_i * 9/5.0) + 32).round(3)
		end
	end

	def in_celsius
		if @options.include? :c
			@options[:c] = @options[:c]
		else
			@options[:c] = ((@options[:f].to_i - 32) * 5.0/9).round
		end
	end

	def self.from_fahrenheit(num)
		self.new(:f => num)
	end
end

class Celsius < Temperature
	def initialize(temp)
		super(c: temp) 
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		super(f: temp)
	end
end

