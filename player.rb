class Player
  attr_accessor :name, :score, :lives

  #initilaze player with name
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

end 

#GETTER
# player.name
# player.player_score
#SETTER
# player.name = "Jeeves"
# player.player_score = 150
# player.player_lives = 
# player.score_incrementer
#

#testing
# Jeeves = Player.new("Jeeves")
# puts Jeeves.name
# puts Jeeves.player_score
# puts Jeeves.lives
# Jeeves.score_incrementer
# puts Jeeves.player_score
# Jeeves.score_incrementer
# puts Jeeves.player_score
# Jeeves.player_score = 0
# puts Jeeves.player_score
