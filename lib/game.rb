require './lib/player'

class Game

	attr_accessor :players

	def initialize
			@players = create_players
	end

	def create_players
		[Player.new, Player.new] 
	end

end