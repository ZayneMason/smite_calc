Dir["/home/*/smite_calc/lib/characters/*.rb"].each { |file| require file }
Dir["/home/*/smite_calc/lib/*.rb"].each { |file| require file }



achilles = Achilles.new
achilles.stats[:health] = [99999]
puts achilles.stats
puts Achilles_Stats
