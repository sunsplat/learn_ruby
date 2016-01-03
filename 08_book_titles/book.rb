class Book
	def title=(t)
		ignore_values = ["and", "the", "of", "in", "a", "an"]
		title_array = t.split(' ').map do |word|
			unless ignore_values.include? word
				word.capitalize
			else
				word
			end
		end
		title_array[0].capitalize!
		@title = title_array.join(' ')
	end

	def title
		@title
	end

end