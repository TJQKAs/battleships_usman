require 'sinatra/base'
require './lib/water'
require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'


class BattleshipsWeb < Sinatra::Base
  set :views, proc {File.join(root, 'views')}
  get '/' do
   erb :index
  end

  get '/newgame' do
    "What's your name?"
    @visitor = params[:name]
    erb :new_game
  end

  get '/test_board' do

    erb :test_board

  end

# get '/new_game' do
#   erb :new_game
# end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
