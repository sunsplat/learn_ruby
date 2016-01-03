class Dictionary
	def initialize(entries = {})
		@entries = entries
	end
	def entries
		@entries
	end
	def add(entries)
		if entries.class == String
			@entries[entries] = nil
		else
			entries.map { |key, value| @entries[key] = value}
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(word)
		if @entries.include? word
			true
		else
			false
		end
	end

	def find(letters)
		@entries.select { |key, value| key.scan(letters).join == letters}  
	end

	def printable
		printer = []
		@entries.sort.collect { |key, value| printer.push("[#{key}] \"#{value}\"") }
		printer.join("\n")
	end
end