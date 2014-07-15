require 'grid'

describe Grid do

	let(:grid) { Grid.new}

	context 'Grid size:' do

		it 'should have a default size of 10' do
			expect(grid.size).to eq Grid::DEFAULT_SIZE
		end

		it 'can be initialized with a size of N' do
			expect(Grid.new(size: 12).size).to eq 12
		end

	end

	context 'Cells in grid:' do

		it 'can hold cells' do
			expect(grid.cells.is_a?(Array)).to be true
		end

		it 'holds size x size number of cells on initialization' do
			expect(grid.cells.count).to eq grid.size**2
		end

		it 'should give the first cell grid reference a1' do
			expect(grid.cells.first.grid_reference).to eq :a1
		end

		it 'should give the last cell in size 10 grid, grid reference j10' do
			expect(grid.cells.last.grid_reference).to eq :j10
		end
		
		it 'should give all cells unique grid references' do
			expect(grid.cells).to eq grid.cells.uniq
		end

	end

end
