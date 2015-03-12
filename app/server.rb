require 'sinatra/base'

class MovieApp < Sinatra::Base
  get '/' do
    'Hello MovieApp!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
