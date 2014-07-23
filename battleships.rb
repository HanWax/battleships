require 'sinatra/base'
require './files.rb'


class Battleships < Sinatra::Base
  
  get '/' do
    erb :index			
  end

	get '/newgame' do
  		erb :newgame
	end
	# if game = nil
	post('/startgame') do
		puts params.inspect
		@name1 = params[:name1]
		@name2 = params[:name2]
		board1 = Board.new(content: Water.new)
		board2 = Board.new(content: Water.new)
		@player1= Player.new(name: params[:name1],board: board1)
		@player2= Player.new(name:params[:name2],board: board2)
		erb :startgame
	end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
