require "sinatra"
require_relative "tic_tac.rb"

get '/' do
	winner_result = " "
	erb :home
end

post '/board' do
	space1 = params[:space1]
	space2 = params[:space2]
	space3 = params[:space3]
	puts space1
	redirect '/play?space1=' + space1 + '&space2=' + space2 + '&space3=' + space3
end

get '/play' do
	winner_result = " "
	space1 = params[:space1]
	space2 = params[:space2]
	space3 = params[:space3]
	print space1	
	erb :play, :locals => {:space1 => space1, :space2 => space2, :space3 => space3}
end

