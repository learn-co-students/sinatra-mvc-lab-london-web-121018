require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

    get '/' do

        erb :user_input
    end

    post '/piglatinize' do
        @pig_text = PigLatinizer.new(params[:user_phrase])
        erb :piglatin_results
      end
end