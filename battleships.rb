require 'sinatra/base'
require './files.rb'


class Battleships < Sinatra::Base
  
  enable :sessions
  GAME=Game.new


  get '/' do
  	puts session[:me]
    erb :index			
  end

	get '/newgame' do
		if GAME.ready_to_start?
			erb :startgame
		else
			"Let's wait for a second player" 
		end
	end

	post '/newgame' do
		session[:me]= Player.new(name:params[:name],board: Board.new(content: Water.new))
		GAME.create_player session[:me]
		puts GAME.players
		redirect to ('/newgame')
		"Let's wait for the second player"

	end

	post('/startgame') do
		puts params
		if params[:game_stage]=="start"
			puts "in start"
			puts params.inspect
			@name1 = params[:name1]
			@name2 = params[:name2]
			@board1 = Board.new(content: Water.new)
			board2 = Board.new(content: Water.new)
			@player1= Player.new(name: params[:name1],board: @board1)
			@player2= Player.new(name:params[:name2],board: @board2)
			@ship = @player1.ships_to_deploy.pop
			@board = @board1
			erb :startgame
		# else
		# 	puts "hello"
		# 	puts params
		# 	@player1=params[:player]
		# 	# @board=params[:board]
		# 	@location = params[:location]
		# 	at_coordinates = Coordinates.new([@location])
		# 	@ship = @player1.ships_to_deploy.pop
		# 	@player1.board.place(@ship, at_coordinates)
		# 	@board = player1.board
			
		# 	erb :startgame
		end
	end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
