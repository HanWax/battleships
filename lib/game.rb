require './files'

class Game

	def initialize
		@players = []
	end

	attr_reader :players

	def create_player player
		@players << player
	 end

	def ready_to_start?
		players.count == 2
	end

	def restart
		@players = []
	end
	

	def deploy_ships_for(player)
		until player.ships_to_deploy.empty?
			player.board.nice_display
			ship_to_be_deployed = player.ships_to_deploy.pop
			puts "#{player.name}! Where do you want to deploy your #{ship_to_be_deployed.class.to_s}, which is #{ship_to_be_deployed.remaining_hits} squares long?"
			at_coordinates = get_coordinates_from_player			
			while at_coordinates.locations.length != ship_to_be_deployed.remaining_hits || !at_coordinates.valid? || at_coordinates.locations.any?{|location| player.board.grid[location].part_of_ship_here? }
				puts "Be careful! The ship is #{ship_to_be_deployed.remaining_hits} long,the coordinates have to be sequential and you must not have ships on top of eachother!!" 
				at_coordinates = get_coordinates_from_player
			end
			player.board.place(ship_to_be_deployed, at_coordinates)
		end
	end

	def has_ships_floating?(player)
		player.board.grid.values.any?{|cell| cell.status == 'S'}
	end

	def fight!
		deploy_ships_for(player[0])
		puts "Player #{player[0].name}! You finished deploying your ships! "
		puts "Hit return when you(#{player[1].name}) want to begin deploying your ships!"
		gets
		deploy_ships_for(player[1])
		puts "Player #{player[1].name}! You finished deploying your ships! "
		puts "The Game will begin NOW!!! Hit return when ready!!"
		gets
		while has_ships_floating?(player[0]) || has_ships_floating?(player[1])
			puts "#{player[0].name}! Where do you want to shoot?"
			at_location = gets.chomp
			player[0].shoot_at(player[1].board, at_location)
			puts "#{player[1].name} turn to shoot! Hit return when ready!"
			gets
			puts "#{player[1].name}! Where do you want to shoot?"
			at_location = gets.chomp
			player[1].shoot_at(player[0].board, at_location)
		end
	end

	private

	def get_coordinates_from_player
		Coordinates.new(gets.chomp.split)
	end

end