require_relative "character"

class Loki < Character
  def get_stats
    {
      health: search_stat(15, 1),
      mana: search_stat(16, 1),
      speed: search_stat(17, 1),
      aa_range: search_stat(18, 1),
      aa_speed: search_stat(19, 1),
      aa_dmg: search_stat(21, 1),
      aa_prog: search_stat(22, 2),
      phys_def: search_stat(24, 1),
      magi_def: search_stat(25, 1),
      hp5: search_stat(27, 1),
      mp5: search_stat(28, 1)
    }
  end
end
