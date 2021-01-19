require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'

get '/' do
  erb :home
end

get '/result' do
  @char = params[:book_title].chomp
  @char_url = "https://rickandmortyapi.com/api/character/#{ @char }"
  begin
    @info = HTTParty.get @char_url
  rescue
    redirect to('/')
  end
  @name = @info["name"]
  @species = @info["species"]
  @gender = @info["gender"]
  @origin = @info["origin"]["name"]


  erb :result
end

get '/faq' do
  erb :faq
end
