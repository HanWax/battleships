require 'game'

describe Game do

	let(:game) { Game.new}

	context 'At the start of the game' do
	
		it 'should start with 2 instances of the player class' do
			expect(game.players[0]).to be_an_instance_of Player
			expect(game.players[1]).to be_an_instance_of Player
		end
		
		xit 'can make ships' do
		end

		xit 'can make grits' do
		end

		xit 'can give instruction for deployment' do 
		end

	end

	context 'In round n' do 

		xit 'can start the game' do
		end

		xit 'can set turns' do
		end

		xit 'can declare victory' do
		end

		xit 'can end the game' do
		end

	end

end
