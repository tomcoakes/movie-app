require 'sinatra/base'
require 'rest-client'
require 'json'

class MovieApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/search' do
    @movie_title = params[:movie]
    @page = 1
    @result = RestClient.get("http://api.themoviedb.org/3/search/movie?api_key=c9403f5cd07c20bf6828624e58e51339&query=#{@movie_title}")
    @api_hash = JSON.parse(@result)
    erb :index
  end

  get '/search' do
    @movie_title = params[:movie]
    @page = params[:page]
    @result = RestClient.get("http://api.themoviedb.org/3/search/movie?api_key=c9403f5cd07c20bf6828624e58e51339&query=#{@movie_title}&page=#{@page.to_i}")
    @api_hash = JSON.parse(@result)
    erb :index
  end


end