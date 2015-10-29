require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base



  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
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
    Game.new.attack($player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
