class Die

  attr_accessor :sides

  def initialize(num=6)
    self.sides = (1..num.to_i).to_a
  end

  def roll
    sides.sample
  end

end
