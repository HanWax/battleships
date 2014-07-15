require 'ship'

	describe 'ship' do

		let(:ship)		{ Ship.new }
		let(:grid)		{ double :grid }

		it 'should not be sunk when created' do 
			expect(ship).not_to be_sunk
		end

		it 'should have a length' do
			expect(ship.length).to eq 3
		end

		it 'length can be set when created' do
			expect(ship.length).to eq Ship::DEFAULT_LENGTH
		end

		it 'should know if it\'s been sunk' do 
			ship.sink!
			expect(ship).to be_sunk
		end

		it 'should know its location' do
			expect(ship.location).to eq nil
		end

		it 'can be deployed to a location' do
			allow(grid).to receive(:deploy).with(ship)
		end
	
		# test Submarine has length

		# it inherits methods from super class (is kind of??)

	end