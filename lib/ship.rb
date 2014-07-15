class Ship

	DEFAULT_LENGTH = 3
	attr_reader	:length
	attr_accessor :location

	def initialize(options = {})
		@length = options.fetch(:length, DEFAULT_LENGTH)
		@sunk = false
	end

	def sunk?
	 	@sunk == true
	end

	def sink!
	 	@sunk = true
	 	self
	end
end



# below are the types of ships that are deployed
# these are sub-classes of the ship (super)class

class AircraftCarrier < Ship
	def initialize
		super(length: 5)
	end
end


class Battleship < Ship
	def initialize
		super(length: 4)
	end
end


class Submarine < Ship
end


class Destroyer < Ship
end


class PatrolBoat < Ship
	def initialize
		super(length: 2)
	end
end