require 'grid'

describe Grid do

	let(:grid) { Grid.new}

	it 'should have a default size of 10' do
		expect(grid.size).to eq Grid::DEFAULT_SIZE
	end

	it 'can be initialized with a size of N' do
		expect(Grid.new(size: 12).size).to eq 12
	end

	it 'can hold cells' do
		expect(grid.cells.is_a?(Array)).to be true
	end

	it 'holds size x size number of cells on initialization' do
		expect(grid.cells.count).to eq grid.size**2
	end
	


end
