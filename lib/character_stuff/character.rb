class Character
  attr_accessor :stats

  def initialize(character)
    @stats = {
      name: character[:name].dup, 
      health: character[:health].dup, 
      mana: character[:mana].dup, 
      speed: character[:speed].dup, 
      aa_range: character[:aa_range].dup, 
      aa_speed: character[:aa_speed].dup, 
      aa_dmg: character[:aa_dmg].dup, 
      aa_prog: character[:aa_prog].dup, 
      phys_def: character[:phys_def].dup, 
      magi_def: character[:magi_def].dup, 
      hp5: character[:hp5].dup, 
      mp5: character[:mp5].dup
    }
  end

  def level(level)
    @stats[:health][0] += (@stats[:health][1] * level)
    @stats[:mana][0] += (@stats[:mana][1] * level)
    @stats[:aa_dmg][0] += (@stats[:aa_dmg][1] * level)
    @stats[:aa_speed][0] += ((@stats[:aa_speed][1]/100) * level)
    @stats[:phys_def][0] += (@stats[:phys_def][1] * level)
    @stats[:magi_def][0] += (@stats[:magi_def][1] * level)
    @stats[:hp5][0] += (@stats[:hp5][1] * level)
    @stats[:mp5][0] += (@stats[:mp5][1] * level)
  end
end

# Need a way of evaluating current stats, maximum stats, and stats without items (for leveling)
# Need a way of preventing going over dev implemented soft caps and hard caps
# 