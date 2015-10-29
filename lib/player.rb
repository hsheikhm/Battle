require_relative 'game'

class Player

  DEFAULT_HP = 100

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    Game.new.attack(player)
  end

  def receive_damage
    @hit_points -= 20
  end

end
