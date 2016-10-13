require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.set_game(Game.new(params[:p1_name], params[:p2_name])) #= Game.new(params[:p1_name], params[:p2_name])
    # current_game.game = current_game
    #$player1 = Player.new(params[:p1_name])
    #$player2 = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    Game.current_game.attack_player
    redirect '/play'
  end

  # get '/confirmation' do
  #   erb :confirmation
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
