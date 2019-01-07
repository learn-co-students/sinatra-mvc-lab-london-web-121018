require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text_from_user = params[:user_phrase]

    pl = PigLatinizer.new
    @piglatin =pl.piglatinize(text_from_user)

    erb :result
  end

  
end