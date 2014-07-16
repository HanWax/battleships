require './lib/grid'

class Ship

	DEFAULT_SHIELD_LEVEL = 3

	attr_accessor	:shield_level

	def initialize(options = {})
		@shield_level = options.fetch(:shield_level, DEFAULT_SHIELD_LEVEL)
		@sunk = false
	end

	def sunk?
	 	@sunk == true
	end

	def sink!
	 	@sunk = true
	 	self
	end

	def attack!
		@shield_level -= 1
		return sink! if @shield_level <= 0
		self
	end

	def deploy_to(grid, coordinates)
		coordinates.each do |coordinate|
			grid.cell(coordinate).occupy_with(self)
			@add_ship 
		end
	end

end

# below are the types of ships that are deployed
# these are sub-classes of the ship (super)class

class AircraftCarrier < Ship
	def initialize
		super(shield_level: 5)
	end
end

class Battleship < Ship
	def initialize
		super(shield_level: 4)
	end
end

class Submarine < Ship
end

class Destroyer < Ship
end

class PatrolBoat < Ship
	def initialize
		super(shield_level: 2)
	end
end