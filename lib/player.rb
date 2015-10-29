class Player

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def reduce_hp
    @hit_points -= 20
  end

end
