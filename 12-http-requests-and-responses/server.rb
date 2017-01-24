require 'sinatra'

# '/' is the homepage
get '/' do
  'Hello Dave!'
end

get '/goodbye' do
  'Goodbye Dave.'
end

#get '/movies/lotr' do
#  'Lord of the Rings'
#end
#
#get '/movies/hp1' do
#  "Harry Potter and the Sorcerer's Stone"  
#end

get '/movies/:title' do
  @title = params[:title]
  erb :movie
end

get '/movies/:title/actors/:actor' do
  @title = params[:title]
  @actor = params[:actor]
  
  erb :actor
end
