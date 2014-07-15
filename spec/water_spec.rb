require 'water'

describe 'water' do 
	it 'should return self when attacked' do 
		water = Water.new
		expect(water.attack!).to eq(water)
	end 

end 