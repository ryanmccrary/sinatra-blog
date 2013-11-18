#app.rb

require 'sinatra'
get '/' do
	"Hello World"
end

get '/hello/:name' do
	"Hello #{params[:name]}"
end

get '/i/ran/:miles' do
   "Well dang, #{params[:miles]} is a lot of miles. You burned off ((#{params[:miles]} * 140 ) / 120) High Lifes. Drink up!"
end

not_found do
	status 404
	'not found'
end