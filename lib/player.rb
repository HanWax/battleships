require './lib/grid'

class Player

	attr_accessor :grid

	def initialize
		@grid = Grid.new(size: 10)
	end

	def instruct_deployment
	end

end