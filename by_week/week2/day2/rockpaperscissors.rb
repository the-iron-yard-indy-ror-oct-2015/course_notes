class Game

  attr_accessor :player_one_choice, :computer

  def play
    puts "Hi. Let's play Rock, Paper, Scissors. 1, 2, 3 ... SHOOT!"
    self.computer = shoot!
    player_pick
    if round == "tie"
      puts "Player: #{player_one_choice.upcase} vs Computer: #{computer.upcase} ----- TIE"
    else
      puts "Player: #{player_one_choice.upcase} vs Computer: #{computer.upcase} ----- #{round.upcase} WINS"
    end
  end

  def bulk_play(num)
    results = {:rock => 0, :paper => 0, :scissors => 0, :ties => 0}
    num.to_i.times do
      self.computer = shoot!
      self.player_one_choice = shoot!
      if round == "computer"
        results[computer.to_sym] = results[computer.to_sym] + 1
      elsif round == "player"
        results[player_one_choice.to_sym] += 1
      else
        results[:ties] += 1
      end
    end
    results.each do |key, value|
      puts "#{key.to_s.upcase} won #{value} times"
    end
  end

  def shoot!
    %w(rock paper scissors).sample
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
if ARGV[0] == "bulk"
  game.bulk_play(ARGV[1] || 1000)
else
  game.play
end
