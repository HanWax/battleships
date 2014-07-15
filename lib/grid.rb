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
		for column in ('a'..last_letter)
			for row in (1..size)
				update_cell_array_with(Cell.new(grid_reference: create_cell_reference(column, row)))
			end
		end	
		cells
	end

	def update_cell_array_with(cell)
		cells << cell
  end

	def create_cell_reference(column, row)
		(column + row.to_s).to_sym
	end

	def last_letter
		('a'..'z').to_a[size-1]
	end

	def cell(grid_reference)
		cells.select { |cell| cell.grid_reference == grid_reference }.first
	end

end

