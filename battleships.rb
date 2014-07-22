require 'sinatra/base'
require './lib/load_files.rb'

class Battleships < Sinatra::Base
  
  get '/' do
    erb :index			
  end

	get '/newgame' do
  		erb :newgame
	end

	post '/startgame' do
		game = Game.new
		game.players[0].name = params[:name1]
		game.players[0].name = params[:name2]
		game.start_game
			erb :startgame
	end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
