
class Player

  def initialize(name)
    @name = name
    @HP = 100
  end

  def name
    @name
  end

  def attack
    @HP -= 10
  end

  def hp
    @HP
  end
  
end
