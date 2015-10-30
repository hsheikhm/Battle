require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base



  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:name1],params[:name2])
    $player1 = $game.player1
    $player2 = $game.player2
    redirect('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_hp = $player2.hit_points
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $game.attack($player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
