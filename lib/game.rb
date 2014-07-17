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
		current_player.deploy_ships(ship_factory)
		other_player.deploy_ships(ship_factory)
		play_game
	end

	def change_turn
		@current_player, @other_player = @other_player, @current_player
	end

	def play_game
		# loop do
		# 	current_player.display_tracking_grid
		# 	current_player.shoot_at(other_player.grid, request_coordinate_to_attack)
		# 	other_player.declare_sunk_ship #Need to add declare sunk ship method
		# 	end_game if victory_declared
		# 	change_turn
		# end
	end

	def victory_declared
		if other_player.grid.count_sunken_ships == 5
			puts "Current player wins!" 
			true
		end
	end

	def end_game
		puts "----GAME OVER----"
		exit
	end



end
