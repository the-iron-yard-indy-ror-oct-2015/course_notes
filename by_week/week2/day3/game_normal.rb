require_relative 'die'

class GameNormal

  attr_accessor :player_score, :computer_score, :dice

  def initialize
    self.dice = 6.times.collect{Die.new}
    self.player_score = 0
    self.computer_score = 0
  end

  def play
    puts "Howdy! Let's play Farkle!"
    until player_score >= 100 || computer_score >= 100
      puts "Press enter to roll ..."
      STDIN.gets
      computer_roll = dice.collect{|die| die.roll}
      self.computer_score += computer_roll.inject(:+)
      player_roll = dice.collect{|die| die.roll}
      self.player_score = self.player_score + player_roll.inject(:+)
      puts "You rolled #{player_roll} for a total of #{player_roll.inject(:+)}."
      puts "The computer rolled #{computer_roll} for a total of #{computer_roll.inject(:+)}."
      puts "Right now, the game score is PLAYER: #{player_score}, COMPUTER: #{computer_score}."
    end
    if computer_score > player_score
      puts "COMPUTER WINS! DESTROY ALL HUMANS!"
    elsif player_score > computer_score
      puts "PLAYER WINS! FRAK TOASTERS!"
    else
      puts "a tie. so sad."
    end
  end

end

GameNormal.new.play
