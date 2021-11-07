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
end

