
class Item
  attr_accessor :item_stats
  def initialize
    @item_stats = 0
  end

  def holder(holder)
    @holder = holder
  end
  
end

class Test_Item < Item
  def initialize
    @item_stats = {health: 200, mana: 100}
  end
  
  def holder(holder)
    super(holder)
    puts "#{holder.stats[:name]}"
  end

end
