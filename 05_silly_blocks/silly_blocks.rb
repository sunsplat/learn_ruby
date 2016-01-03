def reverser(&block)
	new_words = []
	separate_words = block.call.split(' ')
	separate_words.each do |word|
		new_words.push(word.reverse)
	end
	new_words.join(' ')
end

def adder(num = 1, &block)
	block.call + num
end

def repeater(x = 0)
	if x == 0
		return yield
	else
		x.times do |n|
			yield
		end
	end
end