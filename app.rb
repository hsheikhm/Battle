require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  def player_variables
    @current_player = $game.current_player
    @other_player = $game.other_player
    @other_player_hp = $game.other_player_hp
    @current_player_hp = $game.current_player_hp
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:name1],params[:name2])
    redirect('/play')
  end

  get '/play' do
    player_variables
    erb(:play)
  end

  get '/attack' do
    player_variables
    $game.attack(@other_player)
    $game.switch_turns
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
