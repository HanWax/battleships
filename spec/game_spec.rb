require 'game'

describe Game do

	let(:game) { Game.new}

	context 'At the start of the game' do
	
		it 'should start with 2 instances of the player class' do
			expect(game.players[0]).to be_an_instance_of Player
			expect(game.players[1]).to be_an_instance_of Player
		end
		
		it 'can make an array of ships' do
			expect(game.ship_factory).to be_an_instance_of Array
		end

		it 'can fill the array with ships' do
			expect(game.ship_factory[0]).to be_an_instance_of AircraftCarrier
			expect(game.ship_factory[1]).to be_an_instance_of Battleship
			expect(game.ship_factory[2]).to be_an_instance_of Destroyer
			expect(game.ship_factory[3]).to be_an_instance_of Submarine
			expect(game.ship_factory[4]).to be_an_instance_of PatrolBoat
		end

		xit 'can give instruction for deployment' do 
		end

	end

	context 'In round n' do 

		xit 'can start the game' do
		end

		xit 'can set turns' do
		end

		it 'can declare victory' do
			grid1 = double :grid1, :count_sunken_ships => 5
			grid2 = double :grid2, :count_sunken_ships => 0
			player1 = double :player1, :grid => grid1
			player2 = double :player2, :grid => grid2
			game.players = [player1, player2]
			expect(game.declare_victory).to eq "player2 wins!"
		end

		xit 'can end the game' do
		end

	end

end
