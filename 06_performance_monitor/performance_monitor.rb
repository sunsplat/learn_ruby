def measure(n = 0, &block)
		start = Time.now
		if n == 0
			yield
		else	
			n.times { |now| result = yield(now) }
		end
		elapse = Time.now - start
		elapse / (n == 0 ? 1 : n)
end