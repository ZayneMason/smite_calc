Dir["/home/*/smite_calc/lib/*/*/*"].each {|file| require file }
Dir["/home/*/smite_calc/lib/characters/*/*"].each {|file| require file }

new_char = Character.new("Ne_Zha")
new_char.write_stats
puts new_char.stats