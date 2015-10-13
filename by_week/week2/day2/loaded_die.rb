require_relative 'die'

class LoadedDie < Die

  def initialize(num=6)
    self.sides = (1..num.to_i).to_a + (1..num.to_i).to_a  + (1..num.to_i).to_a + [num.to_i/2]
  end

end
