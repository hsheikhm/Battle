require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(name1, name2, player=Player)
    @player1 = player.new(name1)
    @player2 = player.new(name2)
  end

  def attack(player)
    player.receive_damage
  end

end
