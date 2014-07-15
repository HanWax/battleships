class Cell

	def initialize
		@occupied = false
		@attacked = false
		@has_reference = true
	end

	def occupied?
		@occupied == true
	end

	def occupy!
		@occupied = true
		self
	end

	def attacked?
		@attacked == true
	end

	def attack!
		@attacked = true
		self
	end

	def has_reference?
		@has_reference == true
	end

end