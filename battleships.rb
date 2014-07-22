require 'sinatra/base'


class Battleships < Sinatra::Base
  
  get '/' do
    erb :index			
  end

	get '/newgame' do
  		erb :newgame
	end

	post '/startgame' do
		
		@name1= params[:name1]
		@name2 = params[:name2]
		
			erb :startgame
	end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
