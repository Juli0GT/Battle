require_relative 'player'

class Game

attr_reader :player1, :player2, :message, :victim

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @message = nil
    @victim = @player2
  end

  def attack_player
    @victim.reduce_hp(10)
    @message = "You have attacked #{@victim.name}.  They are very angry."
    change_victim
  end

  def change_victim
    @victim == @player1 ? @victim = @player2 : @victim = @player1
  end
end
