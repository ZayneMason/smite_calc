Dir["/home/*/smite_calc/lib/character_stuff/characters/*.rb"].each { |file| require file }
Dir["/home/*/smite_calc/lib/character_stuff/*.rb"].each { |file| require file }
Dir["/home/*/smite_calc/lib/item_stuff/item.rb"].each { |file| require file }
Dir["/home/*/smite_calc/lib/*.rb"].each { |file| require file }


achilles = Achilles.new
cernunnos = Cernunnos.new

achilles.add_item([Test_Item.new, Test_Item.new])
puts achilles.stats

cernunnos.add_item([Test_Item.new])
puts cernunnos.stats
