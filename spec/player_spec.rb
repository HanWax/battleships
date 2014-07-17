require 'player'


	describe Player do 

		let(:player)  {Player.new																							}	
		let(:ship)		{ double :ship, :shield_level => 2											}


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

	context 'requesting coordinates' do

		it 'can request a coordinate to attack' do
			msg = "Please enter a coordinate to attack (e.g a1):"
			expect(STDOUT).to receive(:puts).with(msg)
			expect(player).to receive(:get_coordinate_from_user).and_return("A1".downcase.to_sym)
			expect(player.request_coordinate_to_attack).to eq :a1
		end

		it 'can generate a coordinate set from a start and end coordinate' do
			expect(player.generate_coordinates("a1", "a3")).to eq [:a1, :a2, :a3]
			expect(player.generate_coordinates("a1", "c1")).to eq [:a1, :b1, :c1]
		end

		it 'can check if coordinates are valid for a ship - number of coords' do
			expect(player.valid_coordinates?(ship,[:a1, :a2, :a3] )).to be false
		end

		it 'can check if coordinates are valid for a ship - same row or column' do
			expect(player.valid_coordinates?(ship,[:a1, :b2,] )).to be false
			expect(player.valid_coordinates?(ship,[:a1, :a2,] )).to be true
		end

	end

	end