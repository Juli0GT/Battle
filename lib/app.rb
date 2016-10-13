require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:p1_name])
    $player2 = Player.new(params[:p2_name])
    # @player1.name = params[:p1_name]
    # @player2.name = params[:p2_name]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $player2.attack
    redirect '/confirmation'
  end

  get '/confirmation' do
    erb :confirmation
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
