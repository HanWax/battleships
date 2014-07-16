require 'player'


	describe Player do 

		let(:player) {Player.new}

		it "should have a grid when created" do 
			expect(player.grid.is_a?(Grid)).to be true
		end

		# it "should tell the ship where to deploy to" do 
		# 	expect(player.instruct_deployment).to eq [:a1. :b1, :c1]
		# end 
	end 