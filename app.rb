require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @player_two = @game.player_two
    @game.attack
    @game.switch_turn
    erb(:attack)
  end

  # get '/attack2' do
  #   @game = $game
  #   @player_one = @game.player_one
  #   @game.attack(@player_one)
  #   erb(:attack2)
  # end

  run! if app_file == $0

end
