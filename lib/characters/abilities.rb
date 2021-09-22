class Abilities
  attr_reader :ability_stats
  def initialize(ability_stats)
    @ability_stats = ability_stats
  end
end

module Crowd_Control
  def slow(enemy)
    puts "=> Slowing #{enemy.name}."
    enemy.character_details[:movement_speed] -= (@ability_stats[:slow] * enemy.character_details[:movement_speed])
    puts enemy
    puts "=> #{enemy.name} is now slowed for 3 seconds."
    sleep(3)
    enemy.refresh_stats
    puts "=> #{enemy.name} is no longer slowed."
    puts enemy
  end
end
