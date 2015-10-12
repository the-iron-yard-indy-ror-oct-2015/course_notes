class Game

  attr_accessor :our_number, :guess, :top_range

  def initialize(num=100)
    self.top_range = num.to_i
    while top_range <= 0
      puts "Pick a number, fool."
      new_num = STDIN.gets.chomp.to_i
      self.top_range = new_num
    end
    generate_guess
  end

  def generate_guess
    self.our_number = (1..top_range).to_a.sample
  end

  def reset!
    generate_guess
    self.guess = 0
  end

  def play
    puts "Hi. I've picked a number between 1 and #{top_range}. Care to guess?"

    until guess == our_number
      self.guess = STDIN.gets.chomp.to_i

      if guess == 0
        puts "Pick a number, fool."
      elsif guess == our_number
        puts "Wahoo! Ya got it!"
      elsif guess < our_number
        puts "Too low. So sad."
      else
        puts "Too high"
      end
    end

    puts "Would you like to play again? y/n"
    response = STDIN.gets.chomp
    if response == "y"
      reset!
      play
    else
      exit
    end

  end

end

game = Game.new(ARGV[0])
game.play
