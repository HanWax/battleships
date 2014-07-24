require 'sinatra/base'
require_relative 'board'
require_relative 'player'
require_relative 'water'
require_relative 'ship'
require_relative 'cell'
require_relative 'coordinates'

class Battleships < Sinatra::Base

 set :views, './views'
 set :session_secret, "Jean"
 enable :sessions



  get '/' do
   erb :index
  end

    get '/enter' do
   erb :enter_name
  end

  post '/enter' do
  	@name = params[:name]
  	board = Board.new(content: Water.new)
  	session[:Player_1] = Player.new(name: @name, board: board)
  	redirect to('/game')

  end

  get '/game' do

		@ship=session[:Player_1].ships_to_deploy.pop
		erb :game
  end


  post '/place' do
  	
  	session[:Player_1].board.place(@ship, params[:coordinate])
  	
  end

 
 
  # start the server if ruby file executed directly
  run! if app_file == $0
end
