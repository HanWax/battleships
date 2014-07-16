require 'player'

	describe Player do 
		it "doesn't have a grid when created" do 
			player = Player.new
			expect(player.grid).to be_empty
		end

		xit "player can have a grid" do 
			player = Player.new
			player.grid
			expect(player.grid).not_to be_empty
		end
	end 