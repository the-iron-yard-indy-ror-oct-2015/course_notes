class Game

  attr_accessor :top_range, :current_guess, :floor

  def initialize
    self.floor = 0
  end

  def play
    puts "Would you like to play a game?"
    puts "Tell me what range we're picking between ..."
    self.top_range = STDIN.gets.chomp.to_i
    check_if_number
    start_guessing
    puts "Thanks for playing"
  end

  def check_if_number
    while top_range <= 0
      puts "Pick a number, please. I am a simple machine and your words are foreign to me."
      self.top_range = STDIN.gets.chomp.to_i
    end
  end

  def start_guessing
    feedback = "n"
    self.current_guess = top_range
    until feedback == "y"
      if feedback == "h" || feedback == "n"
        if feedback == "h"
          self.top_range = current_guess
        end
        our_range = (floor..top_range).to_a
        self.current_guess = our_range[our_range.length/2]
        puts "My guess is #{current_guess}. Am I high (h), low (l) or correct (y)?"
      elsif feedback == "l"
        self.floor = current_guess
        our_range = (current_guess..top_range).to_a
        self.current_guess = our_range[our_range.length/2]
        puts "My guess is #{current_guess}. Am I high (h), low (l) or correct (y)?"
      else
        puts "Pick one of h, l or y."
      end
      feedback = STDIN.gets.chomp
    end
  end


end

game = Game.new
game.play
