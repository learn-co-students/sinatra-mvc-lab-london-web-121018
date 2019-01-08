require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        latan = PigLatinizer.new
        @latanize = latan.piglatinize(params[:user_phrase])

        erb :latin_results
    end
end