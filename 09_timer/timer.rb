class Timer
	def time_string
		@seconds = Time.at(@seconds).utc.strftime("%H:%M:%S")
	end

	def seconds=(t)
		@seconds = t
	end

	def seconds(seconds = 0)
		@seconds = seconds
	end
end