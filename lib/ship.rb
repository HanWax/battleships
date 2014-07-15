class Ship

	DEFAULT_LENGTH = 3
	attr_reader	:length

	def initialize(options = {})
		@length = options.fetch(:length, DEFAULT_LENGTH)
		@sunk = false
		@location = []
	end

	def length
		@length
	end

	def sunk?
	 	@sunk == true
	end

	def sink!
	 	@sunk = true
	 	self
	end

	def location 
		@location ||= [] 
	end 

end