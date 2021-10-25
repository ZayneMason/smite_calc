Dir["/home/*/smite_calc/lib/*/*"].each {|file| require file }

heimdallr = Character.new("Loki")
puts heimdallr.stats