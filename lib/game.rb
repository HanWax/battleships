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

	#Requesting attack coordinates

	def request_coordinate_to_attack
		puts "Please enter a coordinate to attack (e.g a1):"
		get_coordinate_from_user
	end

	def get_coordinate_from_user
		gets.chomp.downcase.to_sym
	end

	#Requesting coordinates to place ship

	def request_coordinate_to_place_ship(ship)
		loop do
			coordinates = generate_coordinates(start_coordinate, end_coordinate)
			break if valid_coordinates?(ship, coordinates)
		end
		coordinates
	end

	def generate_coordinates(start_coordinate, end_coordinate)
		coordinates = []
		start_letter, start_number = letter(start_coordinate), number(start_coordinate)
		end_letter, end_number = letter(end_coordinate), number(end_coordinate)
		if start_letter == end_letter
			for i in (start_number..end_number)
				coordinates << (start_letter + i.to_s).to_sym
			end
		else
			for i in (start_letter..end_letter)
				coordinates << (i + start_number.to_s).to_sym
			end
		end
		coordinates
	end

	def valid_coordinates?(ship,coordinates)
		return false unless all_coordinates_vacant?(coordinates)
		return false unless have_shared_row_or_column?(coordinates)
		return false unless coordinates.count == ship.shield_level
		true
	end

	def have_shared_row_or_column?(coordinates)
		shared_column?(coordinates) or shared_column?(coordinates)
	end

	def shared_column?(coordinates)
		coordinates.all?{ |coordinate| letter(coordinate) == letter(coordinates.first) }
	end

	def shared_row?(coordinates)
		coordinates.all?{ |coordinate| number(coordinate) == number(coordinates.first) }
	end

	def all_coordinates_vacant?(coordinates)
		coordinates.all?{ |coordinate| vacant?(coordinate) }
	end

	def vacant?(coordinate)
		#Move to player class to implement properly?
		true
	end

	def start_coordinate
		puts "Enter coordinate to place start of #{ship.class}"
		get_coordinate_from_user
	end

	def end_coordinate
		puts "Enter coordinate to place end of #{ship.class}"
		get_coordinate_from_user
	end

end

def letter(coordinate)
	coordinate[0]
end

def number(coordinate)
	coordinate[1..2].to_i
end