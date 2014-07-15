require 'cell'

describe 'cell' do

	let(:cell) 				{ Cell.new}
	let(:occupied_cell)		{ Cell.new.occupy! }

	it 'should not be occupied when created' do
		expect(cell).not_to be_occupied
	end

	it 'can be occupied' do
		cell.occupy!
		expect(cell).to be_occupied
	end

	it 'should not have been attacked when created' do
		expect(cell).not_to be_attacked
	end

	it 'can be attacked' do
		cell.attack!
		expect(cell).to be_attacked
	end

	it 'can register hit' do
		expect(occupied_cell.attack!).to eq 'hit' 
	end

	it 'has a grid reference when created' do
		expect(cell.grid_reference).to eq (:zz11)
	end

end