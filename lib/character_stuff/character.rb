class Character
  attr_accessor :stats

  def initialize(character)
    copy_stats = Marshal.dump(character)
    @stats = Marshal.load(copy_stats)
  end

  def level(level)
    @stats[:health][0] += (@stats[:health][1] * level)
    @stats[:mana][0] += (@stats[:mana][1] * level)
    @stats[:aa_dmg][0] += (@stats[:aa_dmg][1] * level)
    @stats[:aa_speed][0] += ((@stats[:aa_speed][1]/100) * level)
    @stats[:phys_def][0] += (@stats[:phys_def][1] * level)
    @stats[:magi_def][0] += (@stats[:magi_def][1] * level)
    @stats[:hp5][0] += (@stats[:hp5][1] * level)
    @stats[:mp5][0] += (@stats[:mp5][1] * level)
  end

  def add_item(items)
    items.each do |item|
      item.holder(self)
      item.item_stats.each_pair do |stat, value|
        @stats[stat][0] += value
      end
    end
  end

end

# Need a way of evaluating current stats, maximum stats, and stats without items (for leveling)
# Need a way of preventing going over dev implemented soft caps and hard caps

