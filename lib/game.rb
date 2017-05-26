
class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = @player_1
  end

  def attack(player)
    player.take_damage
  end

  

  def change_turn
  	player_1_turn? ? @turn = @player_2 : @turn = @player_1
   end

private

  def player_1_turn?
    @turn == @player_1
  end
end
