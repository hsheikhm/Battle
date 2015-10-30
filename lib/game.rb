require_relative 'player'

class Game

  attr_reader :current_player, :other_player, :players

  def initialize(name1, name2, player=Player)
    @players = [player.new(name1), player.new(name2)]
    @current_player = @players.first
    @other_player = @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @players.rotate!
    @current_player = @players.first
    @other_player = @players.last
  end

  def other_player_hp
    other_player.hit_points
  end

  def current_player_hp
    current_player.hit_points
  end

end
