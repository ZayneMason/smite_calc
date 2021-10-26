# require_relative "abilities"

require 'mechanize'

class Character
  attr_reader :stats, :name

  def initialize(god)
    @name = god
    mechanize = Mechanize.new
    @god_page = mechanize.get("https://smite.fandom.com/wiki/#{god}")
    @stats = get_stats
    stat_cleanup
  end


  def stat_cleanup
    # Removing double "0.0" in aa_dmg array, unknown why it occured
    @stats[:aa_dmg].reject!{|value| value == 0.0}
    # Removing useless 5.0, appeared because of the "5" in mp5
    case
    when @stats[:mp5].count(5.0) < 2
      @stats[:mp5].reject!{|value| value == 5.0}
    when @stats[:mp5].count(5.0) > 1
      @stats[:mp5].uniq!
    end
    # Removing useless 5.0, appeared because of the "5" in hp5
    case
    when @stats[:hp5].count(5.0) < 2
      @stats[:hp5].reject!{|value| value == 5.0}
    when @stats[:hp5].count(5.0) > 1
      @stats[:hp5].uniq!
    end
  end

  # Scanning each table for numbers for stats and passing param num for which panel the stats occur
  # Scan is searching for digits with/without decimal points and decimals with/without digits
  def search_stat(num)
    @god_page.search('table.infobox tr')[num].text.chomp.scan(/[-+]?[0-9]*\.?[0-9]*/).select!{|value| !value.empty?}.map{|value| value.to_f}
  end  
  
  # Pulling data for each stat table
  def get_stats
    {
      name: @name,
      health: search_stat(15),
      mana: search_stat(16),
      speed: search_stat(17),
      aa_range: search_stat(18),
      aa_speed: search_stat(19),
      aa_dmg: search_stat(21),
      aa_prog: search_stat(22),
      phys_def: search_stat(24),
      magi_def: search_stat(25),
      hp5: search_stat(27),
      mp5: search_stat(28)
    }
  end

  def write_stats
    File.write("lib/characters/characters/#{name.downcase}.rb", "#{name} = #{@stats}", mode: "a")
  end

end

