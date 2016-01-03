def translate(word)
	vowels = ['a', 'e', 'i', 'o', 'u']
	word_arr = []
	final_arr = []
	new_words = word.split(' ')

	new_words.each do |word|
			word_arr = word.split('')
			# word_arr = new_words.split('')
			if word_arr[0] == 'q' && word_arr[1] == 'u'
				final_arr.push(word_arr.rotate(2).push('a', 'y', ' '))
			elsif word_arr[0] == 's' && word_arr[1] == 'q' && word_arr[2] == 'u'
				final_arr.push(word_arr.rotate(3).push('a', 'y', ' '))
			elsif vowels.include? word_arr[0]
				final_arr.push(word_arr.push('a', 'y', ' '))
			elsif !(vowels.include? word_arr[0]) && !(vowels.include? word_arr[1]) && !(vowels.include? word_arr[2])
				final_arr.push(word_arr.rotate(3).push('a', 'y', ' '))
			elsif !(vowels.include? word_arr[0]) && !(vowels.include? word_arr[1])
				final_arr.push(word_arr.rotate(2).push('a', 'y', ' '))
			else				
				final_arr.push(word_arr.rotate.push('a', 'y', ' '))
			end
	end
	final_arr.join
	final_arr[-1].pop
	final_arr.join
end