Dir["/home/*/smite_calc/lib/character_stuff/characters/*.rb"].each { |file| require file }
Dir["/home/*/smite_calc/lib/character_stuff/*.rb"].each { |file| require file }
Dir["/home/*/smite_calc/lib/*.rb"].each { |file| require file }



achilles_one = Achilles.new
achilles_two = Achilles.new
achilles_one.level(20)
puts achilles_one.stats
puts achilles_two.stats

