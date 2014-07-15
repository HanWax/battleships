require 'hit_cell'

describe 'hit_cell' do

let(:hit_cell) {HitCell.new}

	it 'can not be attacked' do 
	expect(lambda{hit_cell.attack!}).to raise_error(RuntimeError) 
	end

end