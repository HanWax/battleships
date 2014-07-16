require 'player'


	describe Player do 

		let(:player) {Player.new}

		it "should have a grid when created" do 
			expect(player.grid.is_a?(Grid)).to be true
		end
	end