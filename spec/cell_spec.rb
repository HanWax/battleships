require 'cell'

describe 'cell' do

	let(:cell) { Cell.new}

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

	it 'has a grid reference when created' do
		expect(cell).to have_reference		
	end

end