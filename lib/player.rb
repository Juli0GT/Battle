
class Player

  def initialize(name)
    @name = name
    @HP = 100
  end

  def name
    @name
  end

  def reduce_hp(num)
    @HP -= num
  end

  def hp
    @HP
  end

end
