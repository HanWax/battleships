class Cell

	def initialize
		@occupied = false
		@attacked = false
		@grid_reference = :zz11
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
		return 'hit' if occupied?
		'miss'
	end

	def grid_reference
		@grid_reference = :zz11
	end

end