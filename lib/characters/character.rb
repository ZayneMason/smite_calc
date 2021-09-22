require_relative "abilities"

class Character
  attr_reader :items, :character_details, :levels, :name
  
  def initialize(char_hash, name)
    @name = name
    @base_stats = char_hash
    @character_details = @base_stats.dup
    @ability_stats = @character_details[:ability_stats]
    @items = []
    generate_levels
    @current_level = 0
  end

  def generate_levels
    @count = 0
    @levels = []
    21.times {@levels << @base_stats.dup}
    @levels.each do |level|
      level[:level_scales].each_pair do |stat, value|
        if value[1] == 'f'
          level[stat] += (@base_stats[:level_scales][stat][0] * @count)
        else
          level[stat] += ((@base_stats[:level_scales][stat][0] * level[stat]) * @count)
        end
      end
      @count +=1
    end
  end

  def add_item(item)
    @items << item
  end

  def level(level)
    @current_level = level
    @character_details = @levels[level].dup
    update_stats
  end
  
  def output_stats
    @output_stats = ""
    @character_details.each { |stat| @output_stats << "\n #{stat}"}
    @output_stats
  end
  
  def update_stats
    @character_details.each_pair do |stat, _|
      @items.each do |item|
        if item.item_info[stat] != nil
          @character_details[stat] += item.item_info[stat]
        end
      end      
    end
  end

  def refresh_stats
    @character_details = @levels[@current_level]
  end

  def to_s
    "Name: #{@name}\nStats: #{output_stats}"
  end

  protected
  attr_accessor :character_details
end

