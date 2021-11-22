module Abilities

  def slow(target, amount)
    target.stats[:speed] -= amount
  end

  def buff_move_speed(target, amount)
    target.stats[:speed] += amount
  end

  def damage(target, amount)
    target.stats[:health] -= amount
  end
  
  def heal(target, amount)
    target.stats[:health] += amount
  end

end
