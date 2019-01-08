require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    @user_input = params[:user_input]
    erb :user_input
  end

  post '/piglatinize' do
   sentence = PigLatinizer.new
   @piglatin = sentence.piglatinize(params[:user_phrase])
   erb :results
 end

end
