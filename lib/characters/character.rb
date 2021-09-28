# require_relative "abilities"
require 'mechanize'

class String
  def to_hash(arr_sep=',', key_sep=':')
    array = self.split(arr_sep)
    hash = {}

    array.each do |e|
      key_value = e.split(key_sep)
      hash[key_value[0]] = key_value[1]
    end

    return hash
  end
end

# class Character
#   attr_reader :items, :character_details, :levels, :name
  
#   def initialize(char_hash, name)
#     @name = name
#     @base_stats = char_hash
#     @character_details = @base_stats.dup
#     @ability_stats = @character_details[:ability_stats]
#     @items = []
#     generate_levels
#     @current_level = 0
#   end

#   def generate_levels
#     @count = 0
#     @levels = []
#     21.times {@levels << @base_stats.dup}
#     @levels.each do |level|
#       level[:level_scales].each_pair do |stat, value|
#         if value[1] == 'f'
#           level[stat] += (@base_stats[:level_scales][stat][0] * @count)
#         else
#           level[stat] += ((@base_stats[:level_scales][stat][0] * level[stat]) * @count)
#         end
#       end
#       @count +=1
#     end
#   end

#   def add_item(item)
#     @items << item
#   end

#   def level(level)
#     @current_level = level
#     @character_details = @levels[level].dup
#     update_stats
#   end
  
#   def output_stats
#     @output_stats = ""
#     @character_details.each { |stat| @output_stats << "\n #{stat}"}
#     @output_stats
#   end
  
#   def update_stats
#     @character_details.each_pair do |stat, _|
#       @items.each do |item|
#         if item.item_info[stat] != nil
#           @character_details[stat] += item.item_info[stat]
#         end
#       end      
#     end
#   end

#   def refresh_stats
#     @character_details = @levels[@current_level]
#   end

#   def to_s
#     "Name: #{@name}\nStats: #{output_stats}"
#   end

#   protected
#   attr_accessor :character_details
# end

class Character
  def initialize(god)
    @stats_num = [] # Creating empty array to store base stat numbers
    mechanize = Mechanize.new 
    @god_page = mechanize.get("https://smite.fandom.com/wiki/#{god}")
    @stats = @god_page.search('table.infobox tr')[14..-2].text
    p @stats
    p @stats.scan(/\b\d*\.*\d+/)
    p @stats.scan(/\/+\d+\.*\d+/) , @stats.scan(/\d+\.*\d+\//)

  end
end

ra = Character.new('Kali')
ra
