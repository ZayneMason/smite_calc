class Item
  attr_reader :item_info, :stats
  def initialize(hash)
    @item_info = hash
  end

  def to_s
    "#{@item_info}"
  end
end
