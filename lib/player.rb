require './lib/grid'

class Player

	attr_accessor :grid

	def initialize
		@grid = Grid.new(size: 10)
	end

	def place(ship, at_coordinates = get_user_input)
		ship.deploy_to(grid, at_coordinates)	
	end	

	def shoot_at(opponent_grid, at_coordinate)
		opponent_grid.attack_cell(at_coordinate)
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