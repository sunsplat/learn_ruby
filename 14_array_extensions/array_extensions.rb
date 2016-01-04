class Array
	def sum
		if self == []
			0
		else
			self.inject { |sum, x| sum + x }
		end
	end

	def square
		if self == []
			[]
		else
			self.each.map do |num|
				num * num
			end
		end
	end

	def square!
		if self == []
			[]
		else
			self.map!.each do |num|
				num * num
			end
		end
	end
end