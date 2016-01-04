public 
def in_words
	numbers = {
		0 => 'zero',
		1 => 'one',
		2 => 'two', 
		3 => 'three', 
		4 => 'four', 
		5 => 'five',
		6 => 'six',
		7 => 'seven',
		8 => 'eight',
		9 => 'nine',
		10 => 'ten',
		11 => 'eleven',
		12 => 'twelve',
		13 => 'thirteen',
		14 => 'fourteen',
		15 => 'fifteen',
		16 => 'sixteen',
		17 => 'seventeen',
		18 => 'eighteen',
		19 => 'nineteen'
	}

	decades = {
		20 => 'twenty',
		30 => 'thirty',
		40 => 'forty',
		50 => 'fifty',
		60 => 'sixty',
		70 => 'seventy',
		80 => 'eighty',
		90 => 'ninety',
		100 => 'one hundred',
		1000 => 'one thousand',
		1000000000 => 'one million'
	}

	#numbers_name.each do |key, value|
	case self
		when 1..19
			numbers[self]
		when 20..99
      decades[self/10] + (self % 10 == 0 ? '' : ('-' + numbers[self%10]))
	end
	#end

end