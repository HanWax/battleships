require './lib/water'
require './lib/hit_cell'
require './lib/ship'

class Cell

	DEFAULT_REFERENCE = nil

	attr_accessor :occupier

	def initialize
		@occupier = Water.new 
	end

	def occupied?
		!@occupier.is_a?(Water)
	end

	def occupy_with(ship)
		@occupier = ship
		self
	end

	def attack!
		@occupier.attack!
		return HitCell.new
	end
	
	def display
		return '@' if occupied? 
		'~'
	end
end