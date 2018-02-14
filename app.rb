require "sinatra"
require_relative "tic_tac.rb"

get '/' do
	erb :home
end