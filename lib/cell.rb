require 'water'

class Cell

	DEFAULT_REFERENCE = nil
	attr_accessor :grid_reference
	attr_accessor :occupier

	def initialize(options = {})
		@grid_reference = options.fetch(:grid_reference, DEFAULT_REFERENCE)
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
end