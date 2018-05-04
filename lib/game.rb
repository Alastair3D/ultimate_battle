class Game

  attr_reader :player_one, :player_two, :current_player, :opponent

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
    @current_player = player1
    @opponent = player2
  end

  def attack
    @opponent.sustain_damage
  end

  def switch_turn
    @current_player, @opponent = @opponent, @current_player
  end
end
