class Book_of_the_Dead
  def initialize
    
  end

  @book_of_the_dead_stats = {
    magi_pwr: 100,
    mana: 200
  }
  
  def passive_check
    if character_current_health < 40% character_max_health add_shield(20% character_max_mana)
  end
  
end