require './lib/player'
require './lib/ship'
class Game

	attr_accessor :players

	def initialize
			@players = player_factory
	end

	def player_factory
		[Player.new, Player.new] 
	end

	def ship_factory
		[ AircraftCarrier.new,
			Battleship.new,
			Destroyer.new,
			Submarine.new,
			PatrolBoat.new
		]
	end

	def declare_victory
		return "player2 wins!" if players[0].grid.count_sunken_ships == 5
		return "player1 wins!" if players[1].grid.count_sunken_ships == 5
	end

end