class Cell

	DEFAULT_REFERENCE = nil
	attr_accessor :grid_reference

	def initialize(options = {})
		@grid_reference = options.fetch(:grid_reference, DEFAULT_REFERENCE)
		@occupied = false
		@attacked = false
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

end