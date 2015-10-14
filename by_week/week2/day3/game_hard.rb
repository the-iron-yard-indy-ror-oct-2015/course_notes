require_relative 'die'

class GameHard

  attr_accessor :player_score, :computer_score, :dice

  def initialize
    self.dice = 6.times.collect{Die.new}
    self.player_score = 0
    self.computer_score = 0
  end

  def play
    puts "Hi! Let's play hard Farkle!"
    until player_score >= 10000 || computer_score >= 10000
      puts "Please roll ..."
      STDIN.gets
      computer_roll = dice.collect{|die| die.roll}
      player_roll = dice.collect{|die| die.roll}
      self.computer_score += score(computer_roll)
      self.player_score += score(player_roll)
      puts "You rolled #{player_roll} for a total of #{score(player_roll)}."
      puts "The computer rolled #{computer_roll} for a total of #{score(computer_roll)}."
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

  def score(roll)
    our_score = 0
    our_score += ones(roll)
    our_score += twos(roll)
    our_score += threes(roll)
    our_score += fours(roll)
    our_score += fives(roll)
    our_score += sixes(roll)
  end

  def ones(roll)
    if roll.count(1) >= 3
      if roll.count(1) > 3
        bonus(roll, 1000)
      else
        1000
      end
    elsif roll.include?(1)
      roll.count(1) * 100
    else
      0
    end
  end

  def twos(roll)
    if roll.count(2) >= 3
      roll.count(2) > 3 ? bonus(roll, 200) : 200
    else
      0
    end
  end

  def threes(roll)
    if roll.count(3) >= 3
      roll.count(3) > 3 ? bonus(roll, 300) : 300
    else
      0
    end
  end

  def fours(roll)
    if roll.count(4) >= 3
      roll.count(4) > 3 ? bonus(roll, 400) : 400
    else
      0
    end
  end

  def fives(roll)
    if roll.count(5) >= 3
      roll.count(5) > 3 ? bonus(roll, 500) : 500
    elsif roll.include?(5)
      roll.count(5) * 50
    else
      0
    end
  end

  def sixes(roll)
    if roll.count(6) >= 3
      roll.count(6) > 3 ? bonus(roll, 600) : 600
    else
      0
    end
  end

  def bonus(roll, value)
    our_score = value
    scorers = roll.group_by{|num| num}.max_by{|key, value| value.length}[1]
    multipliers = scorers[3..-1]
    multipliers.each do |_num|
      our_score = our_score * 2
    end
    our_score
  end

end

GameHard.new.play
