require './lib/grid'

class Player

	attr_accessor :grid

	def initialize
		@grid = Grid.new(size: 10)
	end

	def place(ship, at_coordinates)
		ship.deploy_to(at_coordinates)	
	end	

	def shoot_at(opponent_grid, at_coordinate)
		opponent_grid.attack_cell(at_coordinate)
	end

end