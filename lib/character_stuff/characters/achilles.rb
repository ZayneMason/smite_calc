Dir["/home/*/smite_calc/lib/character_stuff/character.rb"].each { |file| require file }

Achilles_Stats = {
  name: "Achilles", 
  health: [475.0, 85.0], 
  mana: [205.0, 35.0], 
  speed: [370.0, 0.0], 
  aa_range: [16.0, 0.0], 
  aa_speed: [0.95, 1.25], 
  aa_dmg: [38.0, 2.0, 100.0], 
  aa_prog: [1], 
  phys_def: [17.0, 3.0], 
  magi_def: [30.0, 0.9], 
  hp5: [9.0, 0.75], 
  mp5: [4.7, 0.39]
}

class Achilles < Character
  def initialize
    super(Achilles_Stats)
  end
end
