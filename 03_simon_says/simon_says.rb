def echo(greeting)
	"#{greeting}"
end

def shout(greeting)
	"#{greeting.upcase}"
end

def repeat(greeting, num = 2)
	arr = num.times.collect do
		"#{greeting}" + " "
	end
	arr = arr.join.split('')
	arr.pop
	arr.join('')
end

def start_of_word(word, num)
	new_word = word.split('').first(num)
	new_word.join
end

def first_word(word)
	word.split(' ')[0]
end

def titleize(words)
	split_words = words.split(' ')
	new_words = []
	if split_words.first == 'the' 
		change_first = split_words.first.split('')
		change_first[0].upcase!
		split_words.shift
		split_words.unshift(change_first.join(''))

	end
	split_words.each do |word|
		if word == 'and' || word == 'a' || word == 'the' || word == 'over'
			new_words.push(word)
		else
			first_letter = word.split('')
			first_letter.first.upcase!
			new_words.push(first_letter.join)
		end
	end

	new_words.join(' ')
end