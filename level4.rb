fragrant-snowflake-ruby-warrior
===============================
class Player
  def play_turn(warrior)
    @health ||= warrior.health
    # cool code goes here
    case
    when !warrior.feel.empty?
      warrior.attack!
    when warrior.feel.empty? && warrior.health < @health
      warrior.walk!
    when warrior.feel.empty? && warrior.health < 15
      warrior.rest!
    else
      warrior.walk!
    end
    
    @health = warrior.health
  end
end
