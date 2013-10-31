require 'sinatra'
get '/' do
	"Hello World"
end

get '/hello/:name' do
	"Hello #{params[:name]}"
end

not_found do
	status 404
	'not found'
end