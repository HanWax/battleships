require './lib/cell'

class Grid

	DEFAULT_SIZE = 10

	attr_reader :size

	def initialize(options = {})
		@size = options.fetch(:size, DEFAULT_SIZE)
		@cells = create_cells
	end

	def cells
		@cells ||= []
	end

	def create_cells
		(size**2).times { cells << Cell.new }
		cells
	end

end

