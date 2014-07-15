require 'grid'

describe Grid do

	let(:grid) 				{ Grid.new													}
	let(:ship) 				{ double :ship 											}
	let(:sunken_ship) { double :sunken_ship, sunk?: true 	}

	context 'Size:' do

		it 'should have a default size of 10' do
			expect(grid.size).to eq Grid::DEFAULT_SIZE
		end

		it 'can be initialized with a size of N' do
			expect(Grid.new(size: 12).size).to eq 12
		end

	end

	context 'Cells in grid:' do

		it 'should hold cells' do
			expect(grid.cells.is_a?(Array)).to be true
		end

		it 'should hold size x size number of cells on initialization' do
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

		it 'should be able to return a specific cell by reference' do
			expect(grid.cell(:a1)).to eq grid.cells.first
			expect(grid.cell(:j10)).to eq grid.cells.last
		end

	end

	context 'Ships in the grid:' do

		it 'it can hold ships' do
			expect(grid.ships.is_a?(Array)).to be true
		end

		it 'should have no ships initially' do
			expect(grid.ships).to be_empty
		end

		it 'a ship can be added' do
			grid.add_ship(ship)
			expect(grid.ships).not_to be_empty
		end

		it 'it can count sunk ships' do
			grid.add_ship(sunken_ship)
			expect(grid.count_sunken_ships).to be 1
		end

	end

end
