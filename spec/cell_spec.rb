require 'cell'

describe 'cell' do

	let(:cell) 				{ Cell.new         }

	it 'should not be occupied when created' do
		expect(cell).not_to be_occupied
	end

	it 'can be occupied by a ship' do
		cell.occupy_with(:ship)
		expect(cell).to be_occupied 
		expect(cell.occupier).to eq(:ship)
	end

	it 'hits the occupier when the cell is hit' do 
		expect(cell.occupier).to receive(:attack!)
		cell.attack!
	end 

	it 'can register hit' do
		expect(cell.attack!).to be_an_instance_of HitCell
	end

	it 'has a grid reference when created' do
		expect(cell.grid_reference).to eq Cell::DEFAULT_REFERENCE
	end

end