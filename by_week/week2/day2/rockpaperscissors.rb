class Game

  attr_accessor :player_one_choice, :computer

  def play
    puts "Hi. Let's play Rock, Paper, Scissors. 1, 2, 3 ... SHOOT!"
    self.computer = %w(rock paper scissors).sample
    player_pick
    if round == "tie"
      puts "Player: #{player_one_choice.upcase} vs Computer: #{computer.upcase} ----- TIE"
    else
      puts "Player: #{player_one_choice.upcase} vs Computer: #{computer.upcase} ----- #{round.upcase} WINS"
    end
  end

  def player_pick
    self.player_one_choice = STDIN.gets.chomp.downcase
    until %w(rock paper scissors).include?(player_one_choice)
      puts "Please pick one of rock, paper, or scissors (and, yes, case matters)"
      self.player_one_choice = STDIN.gets.chomp.downcase
    end
  end

  def round
    if computer_wins?
      "computer"
    elsif player_wins?
      "player"
    else
      "tie"
    end
  end

  def computer_wins?
    winning = {:rock => "scissors", :paper => "rock", :scissors => "paper"}
    winning[computer.to_sym] == player_one_choice
  end

  def player_wins?
    winning = {:rock => "scissors", :paper => "rock", :scissors => "paper"}
    winning[player_one_choice.to_sym] == computer
  end

end


game = Game.new
game.play
