class Game

  attr_reader :player_one, :player_two, :current_player

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
    @current_player = player1
  end



  def attack(player)
    player.sustain_damage
  end

  # def display_player_one_name
  #   @player_one.name
  # end

end
