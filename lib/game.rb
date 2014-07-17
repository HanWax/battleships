require './lib/player'
require './lib/ship'

class Game

	attr_accessor :current_player, :other_player

	def initialize
			@current_player = player_factory
			@other_player = player_factory
	end

	def players
		[@current_player, @other_player]
	end

	def player_factory
		Player.new
	end

	def ship_factory
		[ AircraftCarrier.new,
			Battleship.new,
			Destroyer.new,
			Submarine.new,
			PatrolBoat.new
		]
	end

	def start_game
		players[0].deploy_ships(ship_factory)
		players[1].deploy_ships(ship_factory)
		play_game
	end

	def change_turn
		@current_player, @other_player = @other_player, @current_player
	end

	def play_game

	end

	def declare_victory
		return "player2 wins!" if players[0].grid.count_sunken_ships == 5
		return "player1 wins!" if players[1].grid.count_sunken_ships == 5
	end

	def end_game
		puts "----GAME OVER----"
		exit
	end

end