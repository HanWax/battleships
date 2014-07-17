require 'player'


	describe Player do 

		let(:player) {Player.new}

	context 'At start of game' do
		it "should have a grid when created" do 
			expect(player.grid.is_a?(Grid)).to be true
		end

		it "should be able to place a ship" do 
			destroyer      = double :ship
			at_coordinates = ['A1', 'A2', 'A3']
			expect(destroyer).to receive(:deploy_to).with(player.grid, at_coordinates)
			player.place(destroyer, at_coordinates)
		end
	end

	context 'Display grids' do
		it "should display the grid" do
			
		end
	end

	context 'During the game' do
		it "should be able to shoot at opponent\'s board" do 
			# i have 2 players
			# i want player1 to shoot at the opponent's board
			# my expectation is that the opponents board receives the message
			# player1.shoot_at(player2.grid, at_coord)
			hannah           = Player.new
			catharinas_grid  = Player.new.grid
			at_coordinate    = 'A1'
			expect(catharinas_grid).to receive(:attack_cell).with(at_coordinate)
			hannah.shoot_at(catharinas_grid, at_coordinate)
		end
	end

	end