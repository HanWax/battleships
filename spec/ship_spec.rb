require 'ship'

	shared_examples 'ship' do

		let(:ship)		{ Ship.new }

		context ''
		it 'should not be sunk when created' do 
			expect(ship).not_to be_sunk
		end

		it 'should have a shield_level' do
			expect(ship.shield_level).to eq 3
		end

		it 'shield_level can be set when created' do
			expect(ship.shield_level).to eq Ship::DEFAULT_SHIELD_LEVEL
		end

		it 'should know if it\'s been sunk' do 
			ship.sink!
			expect(ship).to be_sunk
		end

	end

	describe AircraftCarrier do
	
		it 'should make an aircraft carrier have shield_level 5' do
			expect(AircraftCarrier.new.shield_level).to be 5
		end

		it_behaves_like 'ship'

	end

	describe Battleship do 

		it 'should make an battleship have shield_level 4' do
			expect(Battleship.new.shield_level).to be 4
		end

		it_behaves_like 'ship'

	end

	describe PatrolBoat do

		it 'should make a patrol boat have shield_level 2' do
			expect(PatrolBoat.new.shield_level).to be 2
		end		

		it_behaves_like 'ship'

	end

	describe Submarine do

		it_behaves_like 'ship'

	end

	describe Destroyer do

		it_behaves_like 'ship'

	end