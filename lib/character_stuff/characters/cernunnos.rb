Dir["/home/*/smite_calc/lib/character_stuff/character.rb"].each { |file| require file }

Cernunnos_Stats = {
  :name=>"Cernunnos",
  :health=>[480.0, 80.0], 
  :mana=>[220.0, 37.0],
  :speed=>[365.0, 0.0], 
  :aa_range=>[55.0, 0.0], 
  :aa_speed=>[1.0, 1.4], 
  :aa_dmg=>[37.0, 2.5, 100.0], 
  :aa_prog=>[], 
  :phys_def=>[13.0, 2.9], 
  :magi_def=>[30.0, 0.9], 
  :hp5=>[8.0, 0.69], 
  :mp5=>[4.5, 0.32]
}

class Cernunnos < Character
  def initialize
    super(Cernunnos_Stats)
  end
end
