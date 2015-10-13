require_relative 'die'
require_relative 'loaded_die'

class DiceProbabilities

  attr_accessor :die, :number_of_rolls

  def initialize(options={})
    if options[:which] == "die" || options[:which] == nil
      self.die = Die.new(options[:sides] || 6)
    else
      self.die = LoadedDie.new(options[:sides] || 6)
    end
    self.number_of_rolls = options[:rounds] || 1000
  end

  def check_probability
    winnings = {}
    die.sides.uniq.each do |number|
      winnings[number] = 0
    end
    number_of_rolls.to_i.times do
      this_roll = self.die.roll
      winnings[this_roll] +=1
    end
    winnings.each do |key, value|
      puts "We rolled #{key} #{value} times"
    end
  end

  def 💩
    puts "POOOOOOOOOOOP"
  end

end
