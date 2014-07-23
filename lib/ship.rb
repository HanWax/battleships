class Ship

	attr_reader :name

	def initialize(size)
		@remaining_hits = size
	end

	def floating?
		remaining_hits != 0
	end

	def remaining_hits
		@remaining_hits
	end

	def hit!
		@remaining_hits -= 1
		return puts 'That\'s a hit!' if floating?
		return puts 'Ship destroyed!!' unless floating?
	end

end

class PatrolBoat < Ship
	def initialize
		super 2
		@name = "Patrol Boat"
	end
end

class Submarine < Ship
	def initialize
		super 3
		@name = "Submarine"
	end
end

class Destroyer < Ship
	def initialize
		super 4
		@name = "Destroyer"
	end
end

class Battleship < Ship
	def initialize
		super 5
		@name = "Battleship"
	end
end

class Carrier < Ship
	def initialize
		super 6
		@name = "Aircraft Carrier"
	end
end