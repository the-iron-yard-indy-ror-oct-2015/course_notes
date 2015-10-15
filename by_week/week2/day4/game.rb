require_relative 'player'

class String

  def name
    self
  end

end

class Game

  attr_accessor :player_one, :player_two, :rounds, :wars

  def initialize
    self.player_one = Player.new
    self.player_two = Player.new("Player Two")
    self.rounds = 0
    self.wars = 0
  end

  def play
    puts "Hi. I'm going to play a simulated game of War. Press [enter] to get started ..."
    STDIN.gets
    until player_one.deck.cards.empty? || player_two.deck.cards.empty?
      round
    end
    if winner.is_a? String
      puts "We had a tie after #{rounds} rounds and #{wars} WARS"
    else
      puts "#{winner.name} won this game (#{score}) after #{rounds} rounds and survived #{wars} WARs."
    end
    puts "Would you like a rematch (y/n)?"
    response = STDIN.gets.chomp.downcase
    if response == "y"
      Game.new.play
    else
      puts "Thanks for playing!"
      exit
    end
  end

  def winner
    players = [player_one, player_two]
    totals = players.collect{|player| player.total_cards.length}.uniq
    if totals.length == 1
      "No One"
    else
      players.max_by{|player| player.total_cards.length}
    end
  end

  def score
    loser = ([player_one, player_two] - [winner]).first
    "#{winner.winnings.length}-#{loser.winnings.length}"
  end

  def round
    self.rounds += 1
    player_one_card = player_one.draw
    player_two_card = player_two.draw
    if player_one_card > player_two_card
      player_one.winnings << player_one_card
      player_one.winnings << player_two_card
    elsif player_two_card > player_one_card
      player_two.winnings << player_one_card
      player_two.winnings << player_two_card
    else
      self.wars += 1
    end
    refresh_decks
  end

  def refresh_decks
    if player_one.deck.cards.empty?
      player_one.deck.cards = player_one.winnings.shuffle
      player_one.winnings = []
    end

    if player_two.deck.cards.empty?
      player_two.deck.cards = player_two.winnings.shuffle
      player_two.winnings = []
    end
  end


end

Game.new.play
